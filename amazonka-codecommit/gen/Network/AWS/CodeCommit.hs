{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS CodeCommit__
--
-- This is the /AWS CodeCommit API Reference/ . This reference provides descriptions of the operations and data types for AWS CodeCommit API along with usage examples.
--
-- You can use the AWS CodeCommit API to work with the following objects:
--
-- Repositories, by calling the following:
--
--     * 'BatchGetRepositories' , which returns information about one or more repositories associated with your AWS account.
--
--     * 'CreateRepository' , which creates an AWS CodeCommit repository.
--
--     * 'DeleteRepository' , which deletes an AWS CodeCommit repository.
--
--     * 'GetRepository' , which returns information about a specified repository.
--
--     * 'ListRepositories' , which lists all AWS CodeCommit repositories associated with your AWS account.
--
--     * 'UpdateRepositoryDescription' , which sets or updates the description of the repository.
--
--     * 'UpdateRepositoryName' , which changes the name of the repository. If you change the name of a repository, no other users of that repository can access it until you send them the new HTTPS or SSH URL to use.
--
--
--
-- Branches, by calling the following:
--
--     * 'CreateBranch' , which creates a branch in a specified repository.
--
--     * 'DeleteBranch' , which deletes the specified branch in a repository unless it is the default branch.
--
--     * 'GetBranch' , which returns information about a specified branch.
--
--     * 'ListBranches' , which lists all branches for a specified repository.
--
--     * 'UpdateDefaultBranch' , which changes the default branch for a repository.
--
--
--
-- Files, by calling the following:
--
--     * 'DeleteFile' , which deletes the content of a specified file from a specified branch.
--
--     * 'GetBlob' , which returns the base-64 encoded content of an individual Git blob object in a repository.
--
--     * 'GetFile' , which returns the base-64 encoded content of a specified file.
--
--     * 'GetFolder' , which returns the contents of a specified folder or directory.
--
--     * 'PutFile' , which adds or modifies a single file in a specified repository and branch.
--
--
--
-- Commits, by calling the following:
--
--     * 'BatchGetCommits' , which returns information about one or more commits in a repository.
--
--     * 'CreateCommit' , which creates a commit for changes to a repository.
--
--     * 'GetCommit' , which returns information about a commit, including commit messages and author and committer information.
--
--     * 'GetDifferences' , which returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID, or other fully qualified reference).
--
--
--
-- Merges, by calling the following:
--
--     * 'BatchDescribeMergeConflicts' , which returns information about conflicts in a merge between commits in a repository.
--
--     * 'CreateUnreferencedMergeCommit' , which creates an unreferenced commit between two branches or commits for the purpose of comparing them and identifying any potential conflicts.
--
--     * 'DescribeMergeConflicts' , which returns information about merge conflicts between the base, source, and destination versions of a file in a potential merge.
--
--     * 'GetMergeCommit' , which returns information about the merge between a source and destination commit.
--
--     * 'GetMergeConflicts' , which returns information about merge conflicts between the source and destination branch in a pull request.
--
--     * 'GetMergeOptions' , which returns information about the available merge options between two branches or commit specifiers.
--
--     * 'MergeBranchesByFastForward' , which merges two branches using the fast-forward merge option.
--
--     * 'MergeBranchesBySquash' , which merges two branches using the squash merge option.
--
--     * 'MergeBranchesByThreeWay' , which merges two branches using the three-way merge option.
--
--
--
-- Pull requests, by calling the following:
--
--     * 'CreatePullRequest' , which creates a pull request in a specified repository.
--
--     * 'CreatePullRequestApprovalRule' , which creates an approval rule for a specified pull request.
--
--     * 'DeletePullRequestApprovalRule' , which deletes an approval rule for a specified pull request.
--
--     * 'DescribePullRequestEvents' , which returns information about one or more pull request events.
--
--     * 'EvaluatePullRequestApprovalRules' , which evaluates whether a pull request has met all the conditions specified in its associated approval rules.
--
--     * 'GetCommentsForPullRequest' , which returns information about comments on a specified pull request.
--
--     * 'GetPullRequest' , which returns information about a specified pull request.
--
--     * 'GetPullRequestApprovalStates' , which returns information about the approval states for a specified pull request.
--
--     * 'GetPullRequestOverrideState' , which returns information about whether approval rules have been set aside (overriden) for a pull request, and if so, the Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.
--
--     * 'ListPullRequests' , which lists all pull requests for a repository.
--
--     * 'MergePullRequestByFastForward' , which merges the source destination branch of a pull request into the specified destination branch for that pull request using the fast-forward merge option.
--
--     * 'MergePullRequestBySquash' , which merges the source destination branch of a pull request into the specified destination branch for that pull request using the squash merge option.
--
--     * 'MergePullRequestByThreeWay' . which merges the source destination branch of a pull request into the specified destination branch for that pull request using the three-way merge option.
--
--     * 'OverridePullRequestApprovalRules' , which sets aside all approval rule requirements for a pull request.
--
--     * 'PostCommentForPullRequest' , which posts a comment to a pull request at the specified line, file, or request.
--
--     * 'UpdatePullRequestApprovalRuleContent' , which updates the structure of an approval rule for a pull request.
--
--     * 'UpdatePullRequestApprovalState' , which updates the state of an approval on a pull request.
--
--     * 'UpdatePullRequestDescription' , which updates the description of a pull request.
--
--     * 'UpdatePullRequestStatus' , which updates the status of a pull request.
--
--     * 'UpdatePullRequestTitle' , which updates the title of a pull request.
--
--
--
-- Approval rule templates, by calling the following:
--
--     * 'AssociateApprovalRuleTemplateWithRepository' , which associates a template with a specified repository. After the template is associated with a repository, AWS CodeCommit creates approval rules that match the template conditions on every pull request created in the specified repository.
--
--     * 'BatchAssociateApprovalRuleTemplateWithRepositories' , which associates a template with one or more specified repositories. After the template is associated with a repository, AWS CodeCommit creates approval rules that match the template conditions on every pull request created in the specified repositories.
--
--     * 'BatchDisassociateApprovalRuleTemplateFromRepositories' , which removes the association between a template and specified repositories so that approval rules based on the template are not automatically created when pull requests are created in those repositories.
--
--     * 'CreateApprovalRuleTemplate' , which creates a template for approval rules that can then be associated with one or more repositories in your AWS account.
--
--     * 'DeleteApprovalRuleTemplate' , which deletes the specified template. It does not remove approval rules on pull requests already created with the template.
--
--     * 'DisassociateApprovalRuleTemplateFromRepository' , which removes the association between a template and a repository so that approval rules based on the template are not automatically created when pull requests are created in the specified repository.
--
--     * 'GetApprovalRuleTemplate' , which returns information about an approval rule template.
--
--     * 'ListApprovalRuleTemplates' , which lists all approval rule templates in the AWS Region in your AWS account.
--
--     * 'ListAssociatedApprovalRuleTemplatesForRepository' , which lists all approval rule templates that are associated with a specified repository.
--
--     * 'ListRepositoriesForApprovalRuleTemplate' , which lists all repositories associated with the specified approval rule template.
--
--     * 'UpdateApprovalRuleTemplateDescription' , which updates the description of an approval rule template.
--
--     * 'UpdateApprovalRuleTemplateName' , which updates the name of an approval rule template.
--
--     * 'UpdateApprovalRuleTemplateContent' , which updates the content of an approval rule template.
--
--
--
-- Comments in a repository, by calling the following:
--
--     * 'DeleteCommentContent' , which deletes the content of a comment on a commit in a repository.
--
--     * 'GetComment' , which returns information about a comment on a commit.
--
--     * 'GetCommentReactions' , which returns information about emoji reactions to comments.
--
--     * 'GetCommentsForComparedCommit' , which returns information about comments on the comparison between two commit specifiers in a repository.
--
--     * 'PostCommentForComparedCommit' , which creates a comment on the comparison between two commit specifiers in a repository.
--
--     * 'PostCommentReply' , which creates a reply to a comment.
--
--     * 'PutCommentReaction' , which creates or updates an emoji reaction to a comment.
--
--     * 'UpdateComment' , which updates the content of a comment on a commit in a repository.
--
--
--
-- Tags used to tag resources in AWS CodeCommit (not Git tags), by calling the following:
--
--     * 'ListTagsForResource' , which gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeCommit.
--
--     * 'TagResource' , which adds or updates tags for a resource in AWS CodeCommit.
--
--     * 'UntagResource' , which removes tags for a resource in AWS CodeCommit.
--
--
--
-- Triggers, by calling the following:
--
--     * 'GetRepositoryTriggers' , which returns information about triggers configured for a repository.
--
--     * 'PutRepositoryTriggers' , which replaces all triggers for a repository and can be used to create or delete triggers.
--
--     * 'TestRepositoryTriggers' , which tests the functionality of a repository trigger by sending data to the trigger target.
--
--
--
-- For information about how to use AWS CodeCommit, see the <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit User Guide> .
module Network.AWS.CodeCommit
  ( -- * Service Configuration
    codeCommit,

    -- * Errors
    -- $errors

    -- ** ActorDoesNotExistException
    _ActorDoesNotExistException,

    -- ** InvalidPullRequestStatusUpdateException
    _InvalidPullRequestStatusUpdateException,

    -- ** NameLengthExceededException
    _NameLengthExceededException,

    -- ** ApprovalRuleNameAlreadyExistsException
    _ApprovalRuleNameAlreadyExistsException,

    -- ** PullRequestIdRequiredException
    _PullRequestIdRequiredException,

    -- ** InvalidConflictDetailLevelException
    _InvalidConflictDetailLevelException,

    -- ** InvalidPullRequestIdException
    _InvalidPullRequestIdException,

    -- ** TargetRequiredException
    _TargetRequiredException,

    -- ** CommitRequiredException
    _CommitRequiredException,

    -- ** FileNameConflictsWithDirectoryNameException
    _FileNameConflictsWithDirectoryNameException,

    -- ** ReferenceDoesNotExistException
    _ReferenceDoesNotExistException,

    -- ** EncryptionKeyNotFoundException
    _EncryptionKeyNotFoundException,

    -- ** TargetsRequiredException
    _TargetsRequiredException,

    -- ** CommentContentRequiredException
    _CommentContentRequiredException,

    -- ** InvalidSystemTagUsageException
    _InvalidSystemTagUsageException,

    -- ** FileEntryRequiredException
    _FileEntryRequiredException,

    -- ** InvalidTargetsException
    _InvalidTargetsException,

    -- ** ManualMergeRequiredException
    _ManualMergeRequiredException,

    -- ** BranchNameExistsException
    _BranchNameExistsException,

    -- ** ParentCommitDoesNotExistException
    _ParentCommitDoesNotExistException,

    -- ** SamePathRequestException
    _SamePathRequestException,

    -- ** AuthorDoesNotExistException
    _AuthorDoesNotExistException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** SourceAndDestinationAreSameException
    _SourceAndDestinationAreSameException,

    -- ** EncryptionIntegrityChecksFailedException
    _EncryptionIntegrityChecksFailedException,

    -- ** InvalidApprovalRuleTemplateDescriptionException
    _InvalidApprovalRuleTemplateDescriptionException,

    -- ** CommentDeletedException
    _CommentDeletedException,

    -- ** InvalidReplacementContentException
    _InvalidReplacementContentException,

    -- ** RepositoryTriggerEventsListRequiredException
    _RepositoryTriggerEventsListRequiredException,

    -- ** FileContentRequiredException
    _FileContentRequiredException,

    -- ** SourceFileOrContentRequiredException
    _SourceFileOrContentRequiredException,

    -- ** InvalidTitleException
    _InvalidTitleException,

    -- ** InvalidApprovalRuleContentException
    _InvalidApprovalRuleContentException,

    -- ** InvalidSourceCommitSpecifierException
    _InvalidSourceCommitSpecifierException,

    -- ** InvalidConflictResolutionException
    _InvalidConflictResolutionException,

    -- ** InvalidOverrideStatusException
    _InvalidOverrideStatusException,

    -- ** PullRequestStatusRequiredException
    _PullRequestStatusRequiredException,

    -- ** MaximumItemsToCompareExceededException
    _MaximumItemsToCompareExceededException,

    -- ** InvalidPullRequestStatusException
    _InvalidPullRequestStatusException,

    -- ** ParentCommitIdRequiredException
    _ParentCommitIdRequiredException,

    -- ** RepositoryDoesNotExistException
    _RepositoryDoesNotExistException,

    -- ** PullRequestApprovalRulesNotSatisfiedException
    _PullRequestApprovalRulesNotSatisfiedException,

    -- ** ApprovalRuleContentRequiredException
    _ApprovalRuleContentRequiredException,

    -- ** TitleRequiredException
    _TitleRequiredException,

    -- ** FileContentSizeLimitExceededException
    _FileContentSizeLimitExceededException,

    -- ** InvalidRepositoryTriggerNameException
    _InvalidRepositoryTriggerNameException,

    -- ** RepositoryTriggerNameRequiredException
    _RepositoryTriggerNameRequiredException,

    -- ** NumberOfRuleTemplatesExceededException
    _NumberOfRuleTemplatesExceededException,

    -- ** RepositoryNameRequiredException
    _RepositoryNameRequiredException,

    -- ** InvalidFileModeException
    _InvalidFileModeException,

    -- ** InvalidRepositoryTriggerEventsException
    _InvalidRepositoryTriggerEventsException,

    -- ** InvalidPathException
    _InvalidPathException,

    -- ** InvalidTargetBranchException
    _InvalidTargetBranchException,

    -- ** InvalidActorARNException
    _InvalidActorARNException,

    -- ** RevisionIdRequiredException
    _RevisionIdRequiredException,

    -- ** InvalidBlobIdException
    _InvalidBlobIdException,

    -- ** MaximumFileEntriesExceededException
    _MaximumFileEntriesExceededException,

    -- ** ApprovalRuleTemplateNameRequiredException
    _ApprovalRuleTemplateNameRequiredException,

    -- ** RepositoryNamesRequiredException
    _RepositoryNamesRequiredException,

    -- ** PullRequestDoesNotExistException
    _PullRequestDoesNotExistException,

    -- ** ReplacementTypeRequiredException
    _ReplacementTypeRequiredException,

    -- ** InvalidReplacementTypeException
    _InvalidReplacementTypeException,

    -- ** FileTooLargeException
    _FileTooLargeException,

    -- ** CannotDeleteApprovalRuleFromTemplateException
    _CannotDeleteApprovalRuleFromTemplateException,

    -- ** ReactionLimitExceededException
    _ReactionLimitExceededException,

    -- ** RevisionNotCurrentException
    _RevisionNotCurrentException,

    -- ** InvalidApprovalRuleNameException
    _InvalidApprovalRuleNameException,

    -- ** CommitIdDoesNotExistException
    _CommitIdDoesNotExistException,

    -- ** RepositoryTriggersListRequiredException
    _RepositoryTriggersListRequiredException,

    -- ** InvalidRelativeFileVersionEnumException
    _InvalidRelativeFileVersionEnumException,

    -- ** TagPolicyException
    _TagPolicyException,

    -- ** ApprovalRuleDoesNotExistException
    _ApprovalRuleDoesNotExistException,

    -- ** RepositoryTriggerBranchNameListRequiredException
    _RepositoryTriggerBranchNameListRequiredException,

    -- ** InvalidClientRequestTokenException
    _InvalidClientRequestTokenException,

    -- ** IdempotencyParameterMismatchException
    _IdempotencyParameterMismatchException,

    -- ** InvalidRepositoryTriggerDestinationARNException
    _InvalidRepositoryTriggerDestinationARNException,

    -- ** BranchNameRequiredException
    _BranchNameRequiredException,

    -- ** RepositoryTriggerDestinationARNRequiredException
    _RepositoryTriggerDestinationARNRequiredException,

    -- ** EncryptionKeyUnavailableException
    _EncryptionKeyUnavailableException,

    -- ** InvalidConflictResolutionStrategyException
    _InvalidConflictResolutionStrategyException,

    -- ** MultipleConflictResolutionEntriesException
    _MultipleConflictResolutionEntriesException,

    -- ** FileDoesNotExistException
    _FileDoesNotExistException,

    -- ** TagKeysListRequiredException
    _TagKeysListRequiredException,

    -- ** InvalidReferenceNameException
    _InvalidReferenceNameException,

    -- ** CommitIdRequiredException
    _CommitIdRequiredException,

    -- ** ReferenceNameRequiredException
    _ReferenceNameRequiredException,

    -- ** MaximumRuleTemplatesAssociatedWithRepositoryException
    _MaximumRuleTemplatesAssociatedWithRepositoryException,

    -- ** CommitMessageLengthExceededException
    _CommitMessageLengthExceededException,

    -- ** MaximumNumberOfApprovalsExceededException
    _MaximumNumberOfApprovalsExceededException,

    -- ** InvalidTagKeysListException
    _InvalidTagKeysListException,

    -- ** EncryptionKeyDisabledException
    _EncryptionKeyDisabledException,

    -- ** DirectoryNameConflictsWithFileNameException
    _DirectoryNameConflictsWithFileNameException,

    -- ** InvalidSortByException
    _InvalidSortByException,

    -- ** InvalidDestinationCommitSpecifierException
    _InvalidDestinationCommitSpecifierException,

    -- ** CommentDoesNotExistException
    _CommentDoesNotExistException,

    -- ** ApprovalRuleTemplateNameAlreadyExistsException
    _ApprovalRuleTemplateNameAlreadyExistsException,

    -- ** InvalidRepositoryTriggerBranchNameException
    _InvalidRepositoryTriggerBranchNameException,

    -- ** MaximumOpenPullRequestsExceededException
    _MaximumOpenPullRequestsExceededException,

    -- ** PullRequestAlreadyClosedException
    _PullRequestAlreadyClosedException,

    -- ** InvalidCommitException
    _InvalidCommitException,

    -- ** ReferenceTypeNotSupportedException
    _ReferenceTypeNotSupportedException,

    -- ** CommentNotCreatedByCallerException
    _CommentNotCreatedByCallerException,

    -- ** InvalidTargetException
    _InvalidTargetException,

    -- ** InvalidRepositoryTriggerCustomDataException
    _InvalidRepositoryTriggerCustomDataException,

    -- ** OverrideAlreadySetException
    _OverrideAlreadySetException,

    -- ** InvalidContinuationTokenException
    _InvalidContinuationTokenException,

    -- ** InvalidRepositoryTriggerRegionException
    _InvalidRepositoryTriggerRegionException,

    -- ** InvalidReactionValueException
    _InvalidReactionValueException,

    -- ** TipsDivergenceExceededException
    _TipsDivergenceExceededException,

    -- ** EncryptionKeyAccessDeniedException
    _EncryptionKeyAccessDeniedException,

    -- ** ReactionValueRequiredException
    _ReactionValueRequiredException,

    -- ** ResourceARNRequiredException
    _ResourceARNRequiredException,

    -- ** PathDoesNotExistException
    _PathDoesNotExistException,

    -- ** ReplacementContentRequiredException
    _ReplacementContentRequiredException,

    -- ** InvalidResourceARNException
    _InvalidResourceARNException,

    -- ** ParentCommitIdOutdatedException
    _ParentCommitIdOutdatedException,

    -- ** InvalidMaxMergeHunksException
    _InvalidMaxMergeHunksException,

    -- ** RestrictedSourceFileException
    _RestrictedSourceFileException,

    -- ** InvalidFilePositionException
    _InvalidFilePositionException,

    -- ** CannotModifyApprovalRuleFromTemplateException
    _CannotModifyApprovalRuleFromTemplateException,

    -- ** InvalidMaxConflictFilesException
    _InvalidMaxConflictFilesException,

    -- ** CommentContentSizeLimitExceededException
    _CommentContentSizeLimitExceededException,

    -- ** InvalidApprovalStateException
    _InvalidApprovalStateException,

    -- ** MaximumBranchesExceededException
    _MaximumBranchesExceededException,

    -- ** OverrideStatusRequiredException
    _OverrideStatusRequiredException,

    -- ** InvalidPullRequestEventTypeException
    _InvalidPullRequestEventTypeException,

    -- ** InvalidApprovalRuleTemplateContentException
    _InvalidApprovalRuleTemplateContentException,

    -- ** CommitIdsLimitExceededException
    _CommitIdsLimitExceededException,

    -- ** ApprovalStateRequiredException
    _ApprovalStateRequiredException,

    -- ** InvalidAuthorARNException
    _InvalidAuthorARNException,

    -- ** MaximumConflictResolutionEntriesExceededException
    _MaximumConflictResolutionEntriesExceededException,

    -- ** InvalidParentCommitIdException
    _InvalidParentCommitIdException,

    -- ** RepositoryNotAssociatedWithPullRequestException
    _RepositoryNotAssociatedWithPullRequestException,

    -- ** ApprovalRuleTemplateContentRequiredException
    _ApprovalRuleTemplateContentRequiredException,

    -- ** ConcurrentReferenceUpdateException
    _ConcurrentReferenceUpdateException,

    -- ** MaximumFileContentToLoadExceededException
    _MaximumFileContentToLoadExceededException,

    -- ** TagsMapRequiredException
    _TagsMapRequiredException,

    -- ** InvalidRepositoryNameException
    _InvalidRepositoryNameException,

    -- ** FolderContentSizeLimitExceededException
    _FolderContentSizeLimitExceededException,

    -- ** CommitIdsListRequiredException
    _CommitIdsListRequiredException,

    -- ** FileModeRequiredException
    _FileModeRequiredException,

    -- ** InvalidTagsMapException
    _InvalidTagsMapException,

    -- ** RepositoryLimitExceededException
    _RepositoryLimitExceededException,

    -- ** NumberOfRulesExceededException
    _NumberOfRulesExceededException,

    -- ** InvalidDeletionParameterException
    _InvalidDeletionParameterException,

    -- ** InvalidReactionUserARNException
    _InvalidReactionUserARNException,

    -- ** DefaultBranchCannotBeDeletedException
    _DefaultBranchCannotBeDeletedException,

    -- ** BranchNameIsTagNameException
    _BranchNameIsTagNameException,

    -- ** PathRequiredException
    _PathRequiredException,

    -- ** FilePathConflictsWithSubmodulePathException
    _FilePathConflictsWithSubmodulePathException,

    -- ** BranchDoesNotExistException
    _BranchDoesNotExistException,

    -- ** InvalidCommentIdException
    _InvalidCommentIdException,

    -- ** InvalidMaxResultsException
    _InvalidMaxResultsException,

    -- ** InvalidRevisionIdException
    _InvalidRevisionIdException,

    -- ** PullRequestCannotBeApprovedByAuthorException
    _PullRequestCannotBeApprovedByAuthorException,

    -- ** ApprovalRuleNameRequiredException
    _ApprovalRuleNameRequiredException,

    -- ** BlobIdRequiredException
    _BlobIdRequiredException,

    -- ** InvalidApprovalRuleTemplateNameException
    _InvalidApprovalRuleTemplateNameException,

    -- ** InvalidDescriptionException
    _InvalidDescriptionException,

    -- ** NoChangeException
    _NoChangeException,

    -- ** CommentIdRequiredException
    _CommentIdRequiredException,

    -- ** MultipleRepositoriesInPullRequestException
    _MultipleRepositoriesInPullRequestException,

    -- ** InvalidOrderException
    _InvalidOrderException,

    -- ** ClientRequestTokenRequiredException
    _ClientRequestTokenRequiredException,

    -- ** InvalidMergeOptionException
    _InvalidMergeOptionException,

    -- ** MergeOptionRequiredException
    _MergeOptionRequiredException,

    -- ** InvalidBranchNameException
    _InvalidBranchNameException,

    -- ** InvalidFileLocationException
    _InvalidFileLocationException,

    -- ** ApprovalRuleTemplateDoesNotExistException
    _ApprovalRuleTemplateDoesNotExistException,

    -- ** MaximumRepositoryTriggersExceededException
    _MaximumRepositoryTriggersExceededException,

    -- ** CommitDoesNotExistException
    _CommitDoesNotExistException,

    -- ** BeforeCommitIdAndAfterCommitIdAreSameException
    _BeforeCommitIdAndAfterCommitIdAreSameException,

    -- ** RepositoryNameExistsException
    _RepositoryNameExistsException,

    -- ** InvalidCommitIdException
    _InvalidCommitIdException,

    -- ** InvalidRepositoryDescriptionException
    _InvalidRepositoryDescriptionException,

    -- ** MaximumRepositoryNamesExceededException
    _MaximumRepositoryNamesExceededException,

    -- ** SameFileContentException
    _SameFileContentException,

    -- ** ApprovalRuleTemplateInUseException
    _ApprovalRuleTemplateInUseException,

    -- ** InvalidEmailException
    _InvalidEmailException,

    -- ** TipOfSourceReferenceIsDifferentException
    _TipOfSourceReferenceIsDifferentException,

    -- ** FolderDoesNotExistException
    _FolderDoesNotExistException,

    -- ** InvalidRuleContentSha256Exception
    _InvalidRuleContentSha256Exception,

    -- ** BlobIdDoesNotExistException
    _BlobIdDoesNotExistException,

    -- ** PutFileEntryConflictException
    _PutFileEntryConflictException,

    -- ** FileContentAndSourceFileSpecifiedException
    _FileContentAndSourceFileSpecifiedException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** BatchAssociateApprovalRuleTemplateWithRepositories
    module Network.AWS.CodeCommit.BatchAssociateApprovalRuleTemplateWithRepositories,

    -- ** PutFile
    module Network.AWS.CodeCommit.PutFile,

    -- ** GetRepositoryTriggers
    module Network.AWS.CodeCommit.GetRepositoryTriggers,

    -- ** DisassociateApprovalRuleTemplateFromRepository
    module Network.AWS.CodeCommit.DisassociateApprovalRuleTemplateFromRepository,

    -- ** DeletePullRequestApprovalRule
    module Network.AWS.CodeCommit.DeletePullRequestApprovalRule,

    -- ** ListRepositoriesForApprovalRuleTemplate
    module Network.AWS.CodeCommit.ListRepositoriesForApprovalRuleTemplate,

    -- ** UpdateRepositoryName
    module Network.AWS.CodeCommit.UpdateRepositoryName,

    -- ** BatchDescribeMergeConflicts
    module Network.AWS.CodeCommit.BatchDescribeMergeConflicts,

    -- ** GetRepository
    module Network.AWS.CodeCommit.GetRepository,

    -- ** UpdatePullRequestStatus
    module Network.AWS.CodeCommit.UpdatePullRequestStatus,

    -- ** PostCommentReply
    module Network.AWS.CodeCommit.PostCommentReply,

    -- ** GetPullRequestOverrideState
    module Network.AWS.CodeCommit.GetPullRequestOverrideState,

    -- ** GetCommentsForPullRequest (Paginated)
    module Network.AWS.CodeCommit.GetCommentsForPullRequest,

    -- ** UpdateDefaultBranch
    module Network.AWS.CodeCommit.UpdateDefaultBranch,

    -- ** BatchGetRepositories
    module Network.AWS.CodeCommit.BatchGetRepositories,

    -- ** GetMergeOptions
    module Network.AWS.CodeCommit.GetMergeOptions,

    -- ** MergePullRequestByThreeWay
    module Network.AWS.CodeCommit.MergePullRequestByThreeWay,

    -- ** UpdatePullRequestDescription
    module Network.AWS.CodeCommit.UpdatePullRequestDescription,

    -- ** GetMergeConflicts
    module Network.AWS.CodeCommit.GetMergeConflicts,

    -- ** PutCommentReaction
    module Network.AWS.CodeCommit.PutCommentReaction,

    -- ** UntagResource
    module Network.AWS.CodeCommit.UntagResource,

    -- ** DeleteApprovalRuleTemplate
    module Network.AWS.CodeCommit.DeleteApprovalRuleTemplate,

    -- ** ListBranches (Paginated)
    module Network.AWS.CodeCommit.ListBranches,

    -- ** ListApprovalRuleTemplates
    module Network.AWS.CodeCommit.ListApprovalRuleTemplates,

    -- ** PutRepositoryTriggers
    module Network.AWS.CodeCommit.PutRepositoryTriggers,

    -- ** CreateBranch
    module Network.AWS.CodeCommit.CreateBranch,

    -- ** MergeBranchesByThreeWay
    module Network.AWS.CodeCommit.MergeBranchesByThreeWay,

    -- ** TagResource
    module Network.AWS.CodeCommit.TagResource,

    -- ** GetFile
    module Network.AWS.CodeCommit.GetFile,

    -- ** UpdatePullRequestApprovalRuleContent
    module Network.AWS.CodeCommit.UpdatePullRequestApprovalRuleContent,

    -- ** UpdatePullRequestTitle
    module Network.AWS.CodeCommit.UpdatePullRequestTitle,

    -- ** UpdateRepositoryDescription
    module Network.AWS.CodeCommit.UpdateRepositoryDescription,

    -- ** OverridePullRequestApprovalRules
    module Network.AWS.CodeCommit.OverridePullRequestApprovalRules,

    -- ** GetPullRequest
    module Network.AWS.CodeCommit.GetPullRequest,

    -- ** UpdateComment
    module Network.AWS.CodeCommit.UpdateComment,

    -- ** GetDifferences (Paginated)
    module Network.AWS.CodeCommit.GetDifferences,

    -- ** GetMergeCommit
    module Network.AWS.CodeCommit.GetMergeCommit,

    -- ** GetApprovalRuleTemplate
    module Network.AWS.CodeCommit.GetApprovalRuleTemplate,

    -- ** GetCommit
    module Network.AWS.CodeCommit.GetCommit,

    -- ** UpdateApprovalRuleTemplateName
    module Network.AWS.CodeCommit.UpdateApprovalRuleTemplateName,

    -- ** GetCommentReactions
    module Network.AWS.CodeCommit.GetCommentReactions,

    -- ** TestRepositoryTriggers
    module Network.AWS.CodeCommit.TestRepositoryTriggers,

    -- ** DeleteFile
    module Network.AWS.CodeCommit.DeleteFile,

    -- ** GetCommentsForComparedCommit (Paginated)
    module Network.AWS.CodeCommit.GetCommentsForComparedCommit,

    -- ** MergeBranchesBySquash
    module Network.AWS.CodeCommit.MergeBranchesBySquash,

    -- ** PostCommentForPullRequest
    module Network.AWS.CodeCommit.PostCommentForPullRequest,

    -- ** MergePullRequestByFastForward
    module Network.AWS.CodeCommit.MergePullRequestByFastForward,

    -- ** CreatePullRequestApprovalRule
    module Network.AWS.CodeCommit.CreatePullRequestApprovalRule,

    -- ** CreateUnreferencedMergeCommit
    module Network.AWS.CodeCommit.CreateUnreferencedMergeCommit,

    -- ** ListAssociatedApprovalRuleTemplatesForRepository
    module Network.AWS.CodeCommit.ListAssociatedApprovalRuleTemplatesForRepository,

    -- ** GetPullRequestApprovalStates
    module Network.AWS.CodeCommit.GetPullRequestApprovalStates,

    -- ** UpdateApprovalRuleTemplateContent
    module Network.AWS.CodeCommit.UpdateApprovalRuleTemplateContent,

    -- ** ListRepositories (Paginated)
    module Network.AWS.CodeCommit.ListRepositories,

    -- ** UpdateApprovalRuleTemplateDescription
    module Network.AWS.CodeCommit.UpdateApprovalRuleTemplateDescription,

    -- ** CreateRepository
    module Network.AWS.CodeCommit.CreateRepository,

    -- ** DescribePullRequestEvents (Paginated)
    module Network.AWS.CodeCommit.DescribePullRequestEvents,

    -- ** DeleteCommentContent
    module Network.AWS.CodeCommit.DeleteCommentContent,

    -- ** DeleteRepository
    module Network.AWS.CodeCommit.DeleteRepository,

    -- ** DescribeMergeConflicts
    module Network.AWS.CodeCommit.DescribeMergeConflicts,

    -- ** BatchGetCommits
    module Network.AWS.CodeCommit.BatchGetCommits,

    -- ** GetFolder
    module Network.AWS.CodeCommit.GetFolder,

    -- ** CreatePullRequest
    module Network.AWS.CodeCommit.CreatePullRequest,

    -- ** EvaluatePullRequestApprovalRules
    module Network.AWS.CodeCommit.EvaluatePullRequestApprovalRules,

    -- ** UpdatePullRequestApprovalState
    module Network.AWS.CodeCommit.UpdatePullRequestApprovalState,

    -- ** CreateCommit
    module Network.AWS.CodeCommit.CreateCommit,

    -- ** AssociateApprovalRuleTemplateWithRepository
    module Network.AWS.CodeCommit.AssociateApprovalRuleTemplateWithRepository,

    -- ** GetBlob
    module Network.AWS.CodeCommit.GetBlob,

    -- ** CreateApprovalRuleTemplate
    module Network.AWS.CodeCommit.CreateApprovalRuleTemplate,

    -- ** ListPullRequests (Paginated)
    module Network.AWS.CodeCommit.ListPullRequests,

    -- ** DeleteBranch
    module Network.AWS.CodeCommit.DeleteBranch,

    -- ** BatchDisassociateApprovalRuleTemplateFromRepositories
    module Network.AWS.CodeCommit.BatchDisassociateApprovalRuleTemplateFromRepositories,

    -- ** GetComment
    module Network.AWS.CodeCommit.GetComment,

    -- ** GetBranch
    module Network.AWS.CodeCommit.GetBranch,

    -- ** ListTagsForResource
    module Network.AWS.CodeCommit.ListTagsForResource,

    -- ** MergeBranchesByFastForward
    module Network.AWS.CodeCommit.MergeBranchesByFastForward,

    -- ** PostCommentForComparedCommit
    module Network.AWS.CodeCommit.PostCommentForComparedCommit,

    -- ** MergePullRequestBySquash
    module Network.AWS.CodeCommit.MergePullRequestBySquash,

    -- * Types

    -- ** ApprovalState
    ApprovalState (..),

    -- ** ChangeTypeEnum
    ChangeTypeEnum (..),

    -- ** ConflictDetailLevelTypeEnum
    ConflictDetailLevelTypeEnum (..),

    -- ** ConflictResolutionStrategyTypeEnum
    ConflictResolutionStrategyTypeEnum (..),

    -- ** FileModeTypeEnum
    FileModeTypeEnum (..),

    -- ** MergeOptionTypeEnum
    MergeOptionTypeEnum (..),

    -- ** ObjectTypeEnum
    ObjectTypeEnum (..),

    -- ** OrderEnum
    OrderEnum (..),

    -- ** OverrideStatus
    OverrideStatus (..),

    -- ** PullRequestEventType
    PullRequestEventType (..),

    -- ** PullRequestStatusEnum
    PullRequestStatusEnum (..),

    -- ** RelativeFileVersionEnum
    RelativeFileVersionEnum (..),

    -- ** ReplacementTypeEnum
    ReplacementTypeEnum (..),

    -- ** RepositoryTriggerEventEnum
    RepositoryTriggerEventEnum (..),

    -- ** SortByEnum
    SortByEnum (..),

    -- ** Approval
    Approval,
    approval,
    aUserARN,
    aApprovalState,

    -- ** ApprovalRule
    ApprovalRule,
    approvalRule,
    arLastModifiedDate,
    arApprovalRuleContent,
    arOriginApprovalRuleTemplate,
    arCreationDate,
    arRuleContentSha256,
    arApprovalRuleId,
    arApprovalRuleName,
    arLastModifiedUser,

    -- ** ApprovalRuleEventMetadata
    ApprovalRuleEventMetadata,
    approvalRuleEventMetadata,
    aremApprovalRuleContent,
    aremApprovalRuleId,
    aremApprovalRuleName,

    -- ** ApprovalRuleOverriddenEventMetadata
    ApprovalRuleOverriddenEventMetadata,
    approvalRuleOverriddenEventMetadata,
    aroemRevisionId,
    aroemOverrideStatus,

    -- ** ApprovalRuleTemplate
    ApprovalRuleTemplate,
    approvalRuleTemplate,
    artLastModifiedDate,
    artApprovalRuleTemplateId,
    artApprovalRuleTemplateName,
    artCreationDate,
    artApprovalRuleTemplateDescription,
    artRuleContentSha256,
    artApprovalRuleTemplateContent,
    artLastModifiedUser,

    -- ** ApprovalStateChangedEventMetadata
    ApprovalStateChangedEventMetadata,
    approvalStateChangedEventMetadata,
    ascemRevisionId,
    ascemApprovalStatus,

    -- ** BatchAssociateApprovalRuleTemplateWithRepositoriesError
    BatchAssociateApprovalRuleTemplateWithRepositoriesError,
    batchAssociateApprovalRuleTemplateWithRepositoriesError,
    baartwreRepositoryName,
    baartwreErrorMessage,
    baartwreErrorCode,

    -- ** BatchDescribeMergeConflictsError
    BatchDescribeMergeConflictsError,
    batchDescribeMergeConflictsError,
    bdmceFilePath,
    bdmceExceptionName,
    bdmceMessage,

    -- ** BatchDisassociateApprovalRuleTemplateFromRepositoriesError
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError,
    batchDisassociateApprovalRuleTemplateFromRepositoriesError,
    bdartfreRepositoryName,
    bdartfreErrorMessage,
    bdartfreErrorCode,

    -- ** BatchGetCommitsError
    BatchGetCommitsError,
    batchGetCommitsError,
    bgceCommitId,
    bgceErrorMessage,
    bgceErrorCode,

    -- ** BlobMetadata
    BlobMetadata,
    blobMetadata,
    bmMode,
    bmBlobId,
    bmPath,

    -- ** BranchInfo
    BranchInfo,
    branchInfo,
    biCommitId,
    biBranchName,

    -- ** Comment
    Comment,
    comment,
    cCallerReactions,
    cLastModifiedDate,
    cCreationDate,
    cReactionCounts,
    cContent,
    cCommentId,
    cInReplyTo,
    cClientRequestToken,
    cAuthorARN,
    cDeleted,

    -- ** CommentsForComparedCommit
    CommentsForComparedCommit,
    commentsForComparedCommit,
    cfccBeforeBlobId,
    cfccRepositoryName,
    cfccBeforeCommitId,
    cfccAfterBlobId,
    cfccComments,
    cfccAfterCommitId,
    cfccLocation,

    -- ** CommentsForPullRequest
    CommentsForPullRequest,
    commentsForPullRequest,
    cfprBeforeBlobId,
    cfprRepositoryName,
    cfprBeforeCommitId,
    cfprAfterBlobId,
    cfprPullRequestId,
    cfprComments,
    cfprAfterCommitId,
    cfprLocation,

    -- ** Commit
    Commit,
    commit,
    cParents,
    cCommitId,
    cAdditionalData,
    cMessage,
    cTreeId,
    cAuthor,
    cCommitter,

    -- ** Conflict
    Conflict,
    conflict,
    cMergeHunks,
    cConflictMetadata,

    -- ** ConflictMetadata
    ConflictMetadata,
    conflictMetadata,
    cmMergeOperations,
    cmFileModeConflict,
    cmFilePath,
    cmIsBinaryFile,
    cmObjectTypeConflict,
    cmNumberOfConflicts,
    cmContentConflict,
    cmObjectTypes,
    cmFileModes,
    cmFileSizes,

    -- ** ConflictResolution
    ConflictResolution,
    conflictResolution,
    crDeleteFiles,
    crSetFileModes,
    crReplaceContents,

    -- ** DeleteFileEntry
    DeleteFileEntry,
    deleteFileEntry,
    dfeFilePath,

    -- ** Difference
    Difference,
    difference,
    dChangeType,
    dAfterBlob,
    dBeforeBlob,

    -- ** Evaluation
    Evaluation,
    evaluation,
    eOverridden,
    eApprovalRulesSatisfied,
    eApproved,
    eApprovalRulesNotSatisfied,

    -- ** File
    File,
    file,
    fAbsolutePath,
    fRelativePath,
    fBlobId,
    fFileMode,

    -- ** FileMetadata
    FileMetadata,
    fileMetadata,
    fmAbsolutePath,
    fmBlobId,
    fmFileMode,

    -- ** FileModes
    FileModes,
    fileModes,
    fmSource,
    fmDestination,
    fmBase,

    -- ** FileSizes
    FileSizes,
    fileSizes,
    fsSource,
    fsDestination,
    fsBase,

    -- ** Folder
    Folder,
    folder,
    folTreeId,
    folAbsolutePath,
    folRelativePath,

    -- ** IsBinaryFile
    IsBinaryFile,
    isBinaryFile,
    ibfSource,
    ibfDestination,
    ibfBase,

    -- ** Location
    Location,
    location,
    lFilePath,
    lFilePosition,
    lRelativeFileVersion,

    -- ** MergeHunk
    MergeHunk,
    mergeHunk,
    mhSource,
    mhIsConflict,
    mhDestination,
    mhBase,

    -- ** MergeHunkDetail
    MergeHunkDetail,
    mergeHunkDetail,
    mhdHunkContent,
    mhdStartLine,
    mhdEndLine,

    -- ** MergeMetadata
    MergeMetadata,
    mergeMetadata,
    mmMergedBy,
    mmMergeCommitId,
    mmIsMerged,
    mmMergeOption,

    -- ** MergeOperations
    MergeOperations,
    mergeOperations,
    moSource,
    moDestination,

    -- ** ObjectTypes
    ObjectTypes,
    objectTypes,
    otSource,
    otDestination,
    otBase,

    -- ** OriginApprovalRuleTemplate
    OriginApprovalRuleTemplate,
    originApprovalRuleTemplate,
    oartApprovalRuleTemplateId,
    oartApprovalRuleTemplateName,

    -- ** PullRequest
    PullRequest,
    pullRequest,
    prRevisionId,
    prPullRequestTargets,
    prTitle,
    prPullRequestStatus,
    prCreationDate,
    prPullRequestId,
    prDescription,
    prClientRequestToken,
    prLastActivityDate,
    prAuthorARN,
    prApprovalRules,

    -- ** PullRequestCreatedEventMetadata
    PullRequestCreatedEventMetadata,
    pullRequestCreatedEventMetadata,
    prcemRepositoryName,
    prcemSourceCommitId,
    prcemDestinationCommitId,
    prcemMergeBase,

    -- ** PullRequestEvent
    PullRequestEvent,
    pullRequestEvent,
    prePullRequestMergedStateChangedEventMetadata,
    prePullRequestSourceReferenceUpdatedEventMetadata,
    preApprovalStateChangedEventMetadata,
    prePullRequestEventType,
    preEventDate,
    prePullRequestCreatedEventMetadata,
    prePullRequestId,
    preApprovalRuleOverriddenEventMetadata,
    preActorARN,
    prePullRequestStatusChangedEventMetadata,
    preApprovalRuleEventMetadata,

    -- ** PullRequestMergedStateChangedEventMetadata
    PullRequestMergedStateChangedEventMetadata,
    pullRequestMergedStateChangedEventMetadata,
    prmscemDestinationReference,
    prmscemMergeMetadata,
    prmscemRepositoryName,

    -- ** PullRequestSourceReferenceUpdatedEventMetadata
    PullRequestSourceReferenceUpdatedEventMetadata,
    pullRequestSourceReferenceUpdatedEventMetadata,
    prsruemRepositoryName,
    prsruemBeforeCommitId,
    prsruemAfterCommitId,
    prsruemMergeBase,

    -- ** PullRequestStatusChangedEventMetadata
    PullRequestStatusChangedEventMetadata,
    pullRequestStatusChangedEventMetadata,
    prscemPullRequestStatus,

    -- ** PullRequestTarget
    PullRequestTarget,
    pullRequestTarget,
    prtDestinationReference,
    prtSourceCommit,
    prtMergeMetadata,
    prtRepositoryName,
    prtSourceReference,
    prtDestinationCommit,
    prtMergeBase,

    -- ** PutFileEntry
    PutFileEntry,
    putFileEntry,
    pfeFileContent,
    pfeSourceFile,
    pfeFileMode,
    pfeFilePath,

    -- ** ReactionForComment
    ReactionForComment,
    reactionForComment,
    rfcReaction,
    rfcReactionUsers,
    rfcReactionsFromDeletedUsersCount,

    -- ** ReactionValueFormats
    ReactionValueFormats,
    reactionValueFormats,
    rvfUnicode,
    rvfShortCode,
    rvfEmoji,

    -- ** ReplaceContentEntry
    ReplaceContentEntry,
    replaceContentEntry,
    rceContent,
    rceFileMode,
    rceFilePath,
    rceReplacementType,

    -- ** RepositoryMetadata
    RepositoryMetadata,
    repositoryMetadata,
    rmLastModifiedDate,
    rmDefaultBranch,
    rmAccountId,
    rmCloneURLSSH,
    rmCloneURLHTTP,
    rmARN,
    rmCreationDate,
    rmRepositoryName,
    rmRepositoryId,
    rmRepositoryDescription,

    -- ** RepositoryNameIdPair
    RepositoryNameIdPair,
    repositoryNameIdPair,
    rnipRepositoryName,
    rnipRepositoryId,

    -- ** RepositoryTrigger
    RepositoryTrigger,
    repositoryTrigger,
    rtCustomData,
    rtBranches,
    rtName,
    rtDestinationARN,
    rtEvents,

    -- ** RepositoryTriggerExecutionFailure
    RepositoryTriggerExecutionFailure,
    repositoryTriggerExecutionFailure,
    rtefFailureMessage,
    rtefTrigger,

    -- ** SetFileModeEntry
    SetFileModeEntry,
    setFileModeEntry,
    sfmeFilePath,
    sfmeFileMode,

    -- ** SourceFileSpecifier
    SourceFileSpecifier,
    sourceFileSpecifier,
    sfsIsMove,
    sfsFilePath,

    -- ** SubModule
    SubModule,
    subModule,
    smCommitId,
    smAbsolutePath,
    smRelativePath,

    -- ** SymbolicLink
    SymbolicLink,
    symbolicLink,
    slAbsolutePath,
    slRelativePath,
    slBlobId,
    slFileMode,

    -- ** Target
    Target,
    target,
    tDestinationReference,
    tRepositoryName,
    tSourceReference,

    -- ** UserInfo
    UserInfo,
    userInfo,
    uiName,
    uiDate,
    uiEmail,
  )
where

import Network.AWS.CodeCommit.AssociateApprovalRuleTemplateWithRepository
import Network.AWS.CodeCommit.BatchAssociateApprovalRuleTemplateWithRepositories
import Network.AWS.CodeCommit.BatchDescribeMergeConflicts
import Network.AWS.CodeCommit.BatchDisassociateApprovalRuleTemplateFromRepositories
import Network.AWS.CodeCommit.BatchGetCommits
import Network.AWS.CodeCommit.BatchGetRepositories
import Network.AWS.CodeCommit.CreateApprovalRuleTemplate
import Network.AWS.CodeCommit.CreateBranch
import Network.AWS.CodeCommit.CreateCommit
import Network.AWS.CodeCommit.CreatePullRequest
import Network.AWS.CodeCommit.CreatePullRequestApprovalRule
import Network.AWS.CodeCommit.CreateRepository
import Network.AWS.CodeCommit.CreateUnreferencedMergeCommit
import Network.AWS.CodeCommit.DeleteApprovalRuleTemplate
import Network.AWS.CodeCommit.DeleteBranch
import Network.AWS.CodeCommit.DeleteCommentContent
import Network.AWS.CodeCommit.DeleteFile
import Network.AWS.CodeCommit.DeletePullRequestApprovalRule
import Network.AWS.CodeCommit.DeleteRepository
import Network.AWS.CodeCommit.DescribeMergeConflicts
import Network.AWS.CodeCommit.DescribePullRequestEvents
import Network.AWS.CodeCommit.DisassociateApprovalRuleTemplateFromRepository
import Network.AWS.CodeCommit.EvaluatePullRequestApprovalRules
import Network.AWS.CodeCommit.GetApprovalRuleTemplate
import Network.AWS.CodeCommit.GetBlob
import Network.AWS.CodeCommit.GetBranch
import Network.AWS.CodeCommit.GetComment
import Network.AWS.CodeCommit.GetCommentReactions
import Network.AWS.CodeCommit.GetCommentsForComparedCommit
import Network.AWS.CodeCommit.GetCommentsForPullRequest
import Network.AWS.CodeCommit.GetCommit
import Network.AWS.CodeCommit.GetDifferences
import Network.AWS.CodeCommit.GetFile
import Network.AWS.CodeCommit.GetFolder
import Network.AWS.CodeCommit.GetMergeCommit
import Network.AWS.CodeCommit.GetMergeConflicts
import Network.AWS.CodeCommit.GetMergeOptions
import Network.AWS.CodeCommit.GetPullRequest
import Network.AWS.CodeCommit.GetPullRequestApprovalStates
import Network.AWS.CodeCommit.GetPullRequestOverrideState
import Network.AWS.CodeCommit.GetRepository
import Network.AWS.CodeCommit.GetRepositoryTriggers
import Network.AWS.CodeCommit.ListApprovalRuleTemplates
import Network.AWS.CodeCommit.ListAssociatedApprovalRuleTemplatesForRepository
import Network.AWS.CodeCommit.ListBranches
import Network.AWS.CodeCommit.ListPullRequests
import Network.AWS.CodeCommit.ListRepositories
import Network.AWS.CodeCommit.ListRepositoriesForApprovalRuleTemplate
import Network.AWS.CodeCommit.ListTagsForResource
import Network.AWS.CodeCommit.MergeBranchesByFastForward
import Network.AWS.CodeCommit.MergeBranchesBySquash
import Network.AWS.CodeCommit.MergeBranchesByThreeWay
import Network.AWS.CodeCommit.MergePullRequestByFastForward
import Network.AWS.CodeCommit.MergePullRequestBySquash
import Network.AWS.CodeCommit.MergePullRequestByThreeWay
import Network.AWS.CodeCommit.OverridePullRequestApprovalRules
import Network.AWS.CodeCommit.PostCommentForComparedCommit
import Network.AWS.CodeCommit.PostCommentForPullRequest
import Network.AWS.CodeCommit.PostCommentReply
import Network.AWS.CodeCommit.PutCommentReaction
import Network.AWS.CodeCommit.PutFile
import Network.AWS.CodeCommit.PutRepositoryTriggers
import Network.AWS.CodeCommit.TagResource
import Network.AWS.CodeCommit.TestRepositoryTriggers
import Network.AWS.CodeCommit.Types
import Network.AWS.CodeCommit.UntagResource
import Network.AWS.CodeCommit.UpdateApprovalRuleTemplateContent
import Network.AWS.CodeCommit.UpdateApprovalRuleTemplateDescription
import Network.AWS.CodeCommit.UpdateApprovalRuleTemplateName
import Network.AWS.CodeCommit.UpdateComment
import Network.AWS.CodeCommit.UpdateDefaultBranch
import Network.AWS.CodeCommit.UpdatePullRequestApprovalRuleContent
import Network.AWS.CodeCommit.UpdatePullRequestApprovalState
import Network.AWS.CodeCommit.UpdatePullRequestDescription
import Network.AWS.CodeCommit.UpdatePullRequestStatus
import Network.AWS.CodeCommit.UpdatePullRequestTitle
import Network.AWS.CodeCommit.UpdateRepositoryDescription
import Network.AWS.CodeCommit.UpdateRepositoryName
import Network.AWS.CodeCommit.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CodeCommit'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
