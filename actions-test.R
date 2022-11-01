# Running this to set up GitHub Actions:

usethis::use_github_actions()
# Didn't allow to push:
# To https://github.com/andrew-edwards/test
#  ! [remote rejected] main -> main (refusing to allow an OAuth App to create or update workflow `.github/workflows/R-CMD-check.yaml` without `workflow` scope)
# error: failed to push some refs to 'https://github.com/andrew-edwards/test'

# But had pushed before setting up the Actions.

# Now try Joe's suggestion:

usethis::create_github_token()  # opens up GitHub. Retain defaults, though maybe
                                # increase the expiry to 90 days (GitHub doesn't
                                # recommend the 'never expire' option).
gitcreds::gitcreds_set()        # I replaced token.

# Adding something to test pushing. Looks like the above worked (the Action
#  runs but fails, presumably because this isn't set up as an R package).

# Confusing, as thought it was working, though this is to set up simpler version
#  I think (which implies setting up a new Action is not currently working!).
# > usethis::use_github_action_check_release()
# Error: GitHub PAT must have one of these forms:
#   * 40 hexadecimal digits (older PATs)
#  * A 'ghp_' prefix followed by 36 to 251 more characters (newer PATs)
# Type .Last.error.trace to see where the error occurred
# >
