--- mutt2task.py	(original)
+++ mutt2task.py	(refactored)
@@ -44,7 +44,7 @@
     if ose.errno == errno.EEXIST and os.path.isdir(notes_folder):
         pass
     else:
-        print("ERR: Sorry, cannot create directory \"%s\"." % notes_folder)
+        print(("ERR: Sorry, cannot create directory \"%s\"." % notes_folder))
         raise
 
 message = sys.stdin.read()
@@ -56,7 +56,7 @@
     if part.get_content_type() == "text/plain":
         if body is None:
             body = ""
-        body += unicode(
+        body += str(
             part.get_payload(decode=True),
             part.get_content_charset(),
             'replace'
@@ -64,7 +64,7 @@
     elif part.get_content_type() == "text/html":
         if html is None:
             html = ""
-        html += unicode(
+        html += str(
             part.get_payload(decode=True),
             part.get_content_charset(),
             'replace'
@@ -89,7 +89,7 @@
  
 # decode internationalized subject and transform ascii into utf8
 message = decode_header(message)
-message = ' '.join([unicode(t[0], t[1] or 'ASCII') for t in message])
+message = ' '.join([str(t[0], t[1] or 'ASCII') for t in message])
 message = message.encode('utf8')
  
 # customize your own taskwarrior line
@@ -102,12 +102,12 @@
 res = Popen(['task', 'add', 'pri:L', '+email', '--', message], stdout=PIPE)
 match = re.match("^Created task (\d+).*", res.stdout.read())
 if match:
-    print(match.string.strip())
+    print((match.string.strip()))
     id = match.group(1)
     uuid = Popen(['task', id, 'uuids'], stdout=PIPE).stdout.read().strip()
     ret = call(['task', id, 'annotate', '--', 'email:', 'Notes'])
     if ret:
-        print("ERR: Sorry, cannot annotate task with ID=%s." % id)
+        print(("ERR: Sorry, cannot annotate task with ID=%s." % id))
         rollback()
 
     notes_file = notes_folder + "/" + uuid + ".txt"
@@ -115,7 +115,7 @@
         shutil.copy(tmpfile, notes_file)
         os.remove(tmpfile)
     except:
-        print("ERR: Sorry, cannot create notes file \"%s\"." % notes_file)
+        print(("ERR: Sorry, cannot create notes file \"%s\"." % notes_file))
         rollback()
 
 ### EOF
