# Copyright (c) 2012 NVIDIA Corporation.  All rights reserved.
#
# NVIDIA Corporation and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto.  Any use, reproduction, disclosure or
# distribution of this software and related documentation without an express
# license agreement from NVIDIA Corporation is strictly prohibited.
#

from nvcstestcore import *
import nvcstestutils

class NvCSFocusPosTest(NvCSTestBase):
    "Focus Position test"

    # Python range specified in this way is really [0,1000)
    # which means, excluding 1000. In this example: 0, 100, ... 900
    focusPosValues = range(0, 1000, 100)

    def __init__(self, options):
        NvCSTestBase.__init__(self, "Focus_Position")
        self.options = options

    def setupGraph(self):
        self.obGraph.setImager(self.options.imager_id)

    def runPreTest(self):
        # check if the focuser is supported
        if(not self.obCamera.isFocuserSupported()):
            return NvCSTestResult.SKIPPED

        if (not self.obCamera.isRawCaptureSupported()):
            self.logger.info("raw capture is not supported")
            return NvCSTestResult.SKIPPED
        else:
            return NvCSTestResult.SUCCESS

    def runTest(self, args):
        retVal = NvCSTestResult.SUCCESS

        # query+print focus position physical range
        physicalRange = self.obCamera.getAttr(nvcamera.attr_focuspositionphysicalrange)
        self.logger.info("focuser physical range: [%d, %d]" % (physicalRange[0], physicalRange[1]))

        # calculate working range
        positionInf = self.obCamera.getAttr(nvcamera.attr_focuspositioninf)
        positionInfOffset = self.obCamera.getAttr(nvcamera.attr_focuspositioninfoffset)
        positionmMacro = self.obCamera.getAttr(nvcamera.attr_focuspositionmacro)
        positionmMacroOffset = self.obCamera.getAttr(nvcamera.attr_focuspositionmacrooffset)

        workingPositionLow = positionInf + positionInfOffset
        workingPositionHigh = positionmMacro + positionmMacroOffset
        self.logger.info("focuser working range: [%d, %d]" % (workingPositionLow, workingPositionHigh))

        # check for unusual values and flag warning
        if(positionInf > positionmMacro):
            self.logger.warning("focus position infinity is larger than focus position macro")
            self.logger.warning("focus position infinity: %d, focus position macro: %d" %
                                (positionInf, positionmMacro))

        if(abs(workingPositionLow) + abs(workingPositionHigh) > 1023):
            self.logger.warning("focuser steps are larger than 1023")

        for focusPos in self.focusPosValues:
            # take an image with focus position set to 1
            self.logger.info("capturing jpeg image with focuspos set to %d..." % focusPos)

            self.obCamera.startPreview()

            self.obCamera.setAttr(nvcamera.attr_focuspos, focusPos)

            # take an image
            fileName = "out_%s_%d_test" % (self.testID, focusPos)
            jpegFilePath = os.path.join(self.testDir, fileName + ".jpg")
            rawFilePath = os.path.join(self.testDir, fileName + ".nvraw")

            self.obCamera.captureConcurrentJpegAndRawImage(jpegFilePath)

            self.obCamera.stopPreview()

            if not self.nvrf.readFile(rawFilePath):
                self.logger.error("couldn't open the file: %s" % rawFilePath)
                retVal = NvCSTestResult.ERROR
                break

            if (self.nvrf._focusPosition !=  focusPos):
                self.logger.error("FocusPosition value is not correct in the raw header: %d" % self.nvrf._focusPosition)
                retVal = NvCSTestResult.ERROR
                break

            focusPosVal = self.obCamera.getAttr(nvcamera.attr_focuspos)
            if (focusPos != focusPosVal):
                self.logger.error("focus position value is not correct in the driver: %d..." % focusPosVal)
                retVal = NvCSTestResult.ERROR
                break

        return retVal
