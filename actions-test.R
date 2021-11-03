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
