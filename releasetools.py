import common
import edify_generator
import time
import copy

def MyselfInfo(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "show_progress(" in edify.script[i] and "0.500000" in edify.script[i]:
      edify.script[i] = '''ui_print("========================");
ui_print("          LA-Q1         ");
ui_print("         Baidu OS       ");
ui_print("        ''' + time.strftime('%Y-%m-%d',time.localtime(time.time())) + '''      ");
ui_print("    weibo.com/7170884   ");
ui_print("        by yegui        ");
ui_print("========================");
show_progress(0.500000, 0);'''
      return

def CopyDataFiles(info):
    for info1 in info.input_zip.infolist():
      if info1.filename.startswith("DATA/"):
        basefilename = info1.filename[5:]
        info2 = copy.copy(info1)
        fn = info2.filename = "data/" + basefilename
        if info.output_zip is not None:
          data = info.input_zip.read(info1.filename)
          info.output_zip.writestr(info2, data)
        print ">>> Copying custom files: " + fn
    return


def FullOTA_InstallEnd(info):
    MyselfInfo(info)
    CopyDataFiles(info)
