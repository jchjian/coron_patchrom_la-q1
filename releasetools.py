import common
import edify_generator


def MyselfInfo(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "show_progress(" in edify.script[i] and "0.500000" in edify.script[i]:
      edify.script[i] = 'ui_print("========================");\nui_print("    weibo.com/7170884   ");\nui_print("        by yegui        ");\nui_print("========================");\nshow_progress(0.500000, 0);'
      return


def FullOTA_InstallEnd(info):
    MyselfInfo(info)

