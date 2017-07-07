# astronomical_dataredu_toolkit
This repository contains some small tools (like shell scripts or some small programs) which rearrangement massive astronomical data and preparations them for the following reduction. They can make your reduction automatically (at least half-automatic) and free you from repeatable work.

# desription for each files:
## _rd_ev_nm.sh_:
  This is a shell script to unzip multiple zip files. Put this script in the same direction where multiple datasets are downloaded(in this case, zip files of SWIFT data).   
  After unwrap the datasets to the target directory, the script will call extract.sh for further processing.

## _extract.sh_:
  This is a shell script to extract those clean, point mode eventfiles `*po_cl.evt` and their exposure map image files `*po_ex.img` from multiple unwrapped dataset file folders to a target directory for further processing.
  
## _rename.sh_:
  This is a shell script to rename the long eventfile name of `*po_cl.evt` and `*po_ex.img` to a short version `obs-id.evt/img` for the convenience of further reduction. At the same time , a file consist of the obs ids are created for further reduction.
  
