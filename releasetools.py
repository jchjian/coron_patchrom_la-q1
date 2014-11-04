import common
import edify_generator
import time

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


def FullOTA_InstallEnd(info):
    MyselfInfo(info)

