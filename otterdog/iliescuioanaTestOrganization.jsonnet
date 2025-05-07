local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('iliescuioanaTestOrganization', 'iliescuioanaTestOrganization') {
  settings+: {
    description: "This is a test organization.",
    discussion_source_repository: "iliescuioanaTestOrganization/test-repo",
    has_discussions: true,
    security_managers: [],
  },
  _repositories+:: [
    orgs.newRepo('test-repo') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "TEST REPOOOO2",
      has_issues: false,
      homepage: "",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      code_scanning_default_setup_enabled: true,
      code_scanning_default_languages: [
        'javascript-typescript',
      ],
    }
  ],
}
