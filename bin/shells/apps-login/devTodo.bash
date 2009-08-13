TODO_OPTIONS=(--timeout --summary)
         cd ()
         {   
             builtin cd "$@"
             RV=$?
             [ $RV = 0 -a -r .todo ] && devtodo ${TODO_OPTIONS}
             return $RV 
         }   
             
         pushd ()
         {   
             builtin pushd "$@"
             RV=$?
             [ $RV = 0 -a -r .todo ] && devtodo ${TODO_OPTIONS}
             return $RV 
         }   
             
         popd ()
         {   
             builtin popd "$@"
             RV=$?   
             [ $RV = 0 -a -r .todo ] && devtodo ${TODO_OPTIONS}
             return $RV 
         }   
     
         # Run todo initially upon login
         # This line causes a bug, leave out
         # devtodo ${TODO_OPTIONS} 
