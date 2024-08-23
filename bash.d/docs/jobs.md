# jobs

`set -m`
`set -o monitor`
Enable job control.
All processes run in a separate process group. 
When a background job completes, its exit status is printed.

`set -b`
`set -o braceexpand`
Cause the status of terminated background jobs to be reported
immediately, rather than before printing the next prompt.


