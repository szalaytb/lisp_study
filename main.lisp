;;Initial setup in case of new CLISP, SBCL in this example.
;;(load "C:\\Users\\inter\\quicklisp.lisp")
;;(quicklisp-quickstart:install)
;;(ql:add-to-init-file)

;;Including libraries from quicklisp site.
(ql:quickload "hunchentoot")
(ql:quickload "spinneret")
(ql:quickload "lass")
(ql:quickload "cffi")

;;Mandatory hello world.
(pprint "Hello world.")

;;Illustrating GUI apps for Windows.
(sb-alien:load-shared-object "user32")

(defvar c-null (sb-sys:int-sap 0))

(define-alien-routine ("MessageBoxA" MessageBox) sb-alien:integer
  (hwnd    (* sb-alien:integer))
  (text    sb-alien:c-string)
  (caption sb-alien:c-string)
  (uType   (sb-alien:unsigned 4)))

(MessageBox c-null "Hello" "Test" 0)
