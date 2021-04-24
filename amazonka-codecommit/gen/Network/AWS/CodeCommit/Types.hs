{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types
  ( -- * Service Configuration
    codeCommit,

    -- * Errors
    _ActorDoesNotExistException,
    _InvalidPullRequestStatusUpdateException,
    _NameLengthExceededException,
    _ApprovalRuleNameAlreadyExistsException,
    _PullRequestIdRequiredException,
    _InvalidConflictDetailLevelException,
    _InvalidPullRequestIdException,
    _TargetRequiredException,
    _CommitRequiredException,
    _FileNameConflictsWithDirectoryNameException,
    _ReferenceDoesNotExistException,
    _EncryptionKeyNotFoundException,
    _TargetsRequiredException,
    _CommentContentRequiredException,
    _InvalidSystemTagUsageException,
    _FileEntryRequiredException,
    _InvalidTargetsException,
    _ManualMergeRequiredException,
    _BranchNameExistsException,
    _ParentCommitDoesNotExistException,
    _SamePathRequestException,
    _AuthorDoesNotExistException,
    _TooManyTagsException,
    _SourceAndDestinationAreSameException,
    _EncryptionIntegrityChecksFailedException,
    _InvalidApprovalRuleTemplateDescriptionException,
    _CommentDeletedException,
    _InvalidReplacementContentException,
    _RepositoryTriggerEventsListRequiredException,
    _FileContentRequiredException,
    _SourceFileOrContentRequiredException,
    _InvalidTitleException,
    _InvalidApprovalRuleContentException,
    _InvalidSourceCommitSpecifierException,
    _InvalidConflictResolutionException,
    _InvalidOverrideStatusException,
    _PullRequestStatusRequiredException,
    _MaximumItemsToCompareExceededException,
    _InvalidPullRequestStatusException,
    _ParentCommitIdRequiredException,
    _RepositoryDoesNotExistException,
    _PullRequestApprovalRulesNotSatisfiedException,
    _ApprovalRuleContentRequiredException,
    _TitleRequiredException,
    _FileContentSizeLimitExceededException,
    _InvalidRepositoryTriggerNameException,
    _RepositoryTriggerNameRequiredException,
    _NumberOfRuleTemplatesExceededException,
    _RepositoryNameRequiredException,
    _InvalidFileModeException,
    _InvalidRepositoryTriggerEventsException,
    _InvalidPathException,
    _InvalidTargetBranchException,
    _InvalidActorARNException,
    _RevisionIdRequiredException,
    _InvalidBlobIdException,
    _MaximumFileEntriesExceededException,
    _ApprovalRuleTemplateNameRequiredException,
    _RepositoryNamesRequiredException,
    _PullRequestDoesNotExistException,
    _ReplacementTypeRequiredException,
    _InvalidReplacementTypeException,
    _FileTooLargeException,
    _CannotDeleteApprovalRuleFromTemplateException,
    _ReactionLimitExceededException,
    _RevisionNotCurrentException,
    _InvalidApprovalRuleNameException,
    _CommitIdDoesNotExistException,
    _RepositoryTriggersListRequiredException,
    _InvalidRelativeFileVersionEnumException,
    _TagPolicyException,
    _ApprovalRuleDoesNotExistException,
    _RepositoryTriggerBranchNameListRequiredException,
    _InvalidClientRequestTokenException,
    _IdempotencyParameterMismatchException,
    _InvalidRepositoryTriggerDestinationARNException,
    _BranchNameRequiredException,
    _RepositoryTriggerDestinationARNRequiredException,
    _EncryptionKeyUnavailableException,
    _InvalidConflictResolutionStrategyException,
    _MultipleConflictResolutionEntriesException,
    _FileDoesNotExistException,
    _TagKeysListRequiredException,
    _InvalidReferenceNameException,
    _CommitIdRequiredException,
    _ReferenceNameRequiredException,
    _MaximumRuleTemplatesAssociatedWithRepositoryException,
    _CommitMessageLengthExceededException,
    _MaximumNumberOfApprovalsExceededException,
    _InvalidTagKeysListException,
    _EncryptionKeyDisabledException,
    _DirectoryNameConflictsWithFileNameException,
    _InvalidSortByException,
    _InvalidDestinationCommitSpecifierException,
    _CommentDoesNotExistException,
    _ApprovalRuleTemplateNameAlreadyExistsException,
    _InvalidRepositoryTriggerBranchNameException,
    _MaximumOpenPullRequestsExceededException,
    _PullRequestAlreadyClosedException,
    _InvalidCommitException,
    _ReferenceTypeNotSupportedException,
    _CommentNotCreatedByCallerException,
    _InvalidTargetException,
    _InvalidRepositoryTriggerCustomDataException,
    _OverrideAlreadySetException,
    _InvalidContinuationTokenException,
    _InvalidRepositoryTriggerRegionException,
    _InvalidReactionValueException,
    _TipsDivergenceExceededException,
    _EncryptionKeyAccessDeniedException,
    _ReactionValueRequiredException,
    _ResourceARNRequiredException,
    _PathDoesNotExistException,
    _ReplacementContentRequiredException,
    _InvalidResourceARNException,
    _ParentCommitIdOutdatedException,
    _InvalidMaxMergeHunksException,
    _RestrictedSourceFileException,
    _InvalidFilePositionException,
    _CannotModifyApprovalRuleFromTemplateException,
    _InvalidMaxConflictFilesException,
    _CommentContentSizeLimitExceededException,
    _InvalidApprovalStateException,
    _MaximumBranchesExceededException,
    _OverrideStatusRequiredException,
    _InvalidPullRequestEventTypeException,
    _InvalidApprovalRuleTemplateContentException,
    _CommitIdsLimitExceededException,
    _ApprovalStateRequiredException,
    _InvalidAuthorARNException,
    _MaximumConflictResolutionEntriesExceededException,
    _InvalidParentCommitIdException,
    _RepositoryNotAssociatedWithPullRequestException,
    _ApprovalRuleTemplateContentRequiredException,
    _ConcurrentReferenceUpdateException,
    _MaximumFileContentToLoadExceededException,
    _TagsMapRequiredException,
    _InvalidRepositoryNameException,
    _FolderContentSizeLimitExceededException,
    _CommitIdsListRequiredException,
    _FileModeRequiredException,
    _InvalidTagsMapException,
    _RepositoryLimitExceededException,
    _NumberOfRulesExceededException,
    _InvalidDeletionParameterException,
    _InvalidReactionUserARNException,
    _DefaultBranchCannotBeDeletedException,
    _BranchNameIsTagNameException,
    _PathRequiredException,
    _FilePathConflictsWithSubmodulePathException,
    _BranchDoesNotExistException,
    _InvalidCommentIdException,
    _InvalidMaxResultsException,
    _InvalidRevisionIdException,
    _PullRequestCannotBeApprovedByAuthorException,
    _ApprovalRuleNameRequiredException,
    _BlobIdRequiredException,
    _InvalidApprovalRuleTemplateNameException,
    _InvalidDescriptionException,
    _NoChangeException,
    _CommentIdRequiredException,
    _MultipleRepositoriesInPullRequestException,
    _InvalidOrderException,
    _ClientRequestTokenRequiredException,
    _InvalidMergeOptionException,
    _MergeOptionRequiredException,
    _InvalidBranchNameException,
    _InvalidFileLocationException,
    _ApprovalRuleTemplateDoesNotExistException,
    _MaximumRepositoryTriggersExceededException,
    _CommitDoesNotExistException,
    _BeforeCommitIdAndAfterCommitIdAreSameException,
    _RepositoryNameExistsException,
    _InvalidCommitIdException,
    _InvalidRepositoryDescriptionException,
    _MaximumRepositoryNamesExceededException,
    _SameFileContentException,
    _ApprovalRuleTemplateInUseException,
    _InvalidEmailException,
    _TipOfSourceReferenceIsDifferentException,
    _FolderDoesNotExistException,
    _InvalidRuleContentSha256Exception,
    _BlobIdDoesNotExistException,
    _PutFileEntryConflictException,
    _FileContentAndSourceFileSpecifiedException,

    -- * ApprovalState
    ApprovalState (..),

    -- * ChangeTypeEnum
    ChangeTypeEnum (..),

    -- * ConflictDetailLevelTypeEnum
    ConflictDetailLevelTypeEnum (..),

    -- * ConflictResolutionStrategyTypeEnum
    ConflictResolutionStrategyTypeEnum (..),

    -- * FileModeTypeEnum
    FileModeTypeEnum (..),

    -- * MergeOptionTypeEnum
    MergeOptionTypeEnum (..),

    -- * ObjectTypeEnum
    ObjectTypeEnum (..),

    -- * OrderEnum
    OrderEnum (..),

    -- * OverrideStatus
    OverrideStatus (..),

    -- * PullRequestEventType
    PullRequestEventType (..),

    -- * PullRequestStatusEnum
    PullRequestStatusEnum (..),

    -- * RelativeFileVersionEnum
    RelativeFileVersionEnum (..),

    -- * ReplacementTypeEnum
    ReplacementTypeEnum (..),

    -- * RepositoryTriggerEventEnum
    RepositoryTriggerEventEnum (..),

    -- * SortByEnum
    SortByEnum (..),

    -- * Approval
    Approval (..),
    approval,
    aUserARN,
    aApprovalState,

    -- * ApprovalRule
    ApprovalRule (..),
    approvalRule,
    arLastModifiedDate,
    arApprovalRuleContent,
    arOriginApprovalRuleTemplate,
    arCreationDate,
    arRuleContentSha256,
    arApprovalRuleId,
    arApprovalRuleName,
    arLastModifiedUser,

    -- * ApprovalRuleEventMetadata
    ApprovalRuleEventMetadata (..),
    approvalRuleEventMetadata,
    aremApprovalRuleContent,
    aremApprovalRuleId,
    aremApprovalRuleName,

    -- * ApprovalRuleOverriddenEventMetadata
    ApprovalRuleOverriddenEventMetadata (..),
    approvalRuleOverriddenEventMetadata,
    aroemRevisionId,
    aroemOverrideStatus,

    -- * ApprovalRuleTemplate
    ApprovalRuleTemplate (..),
    approvalRuleTemplate,
    artLastModifiedDate,
    artApprovalRuleTemplateId,
    artApprovalRuleTemplateName,
    artCreationDate,
    artApprovalRuleTemplateDescription,
    artRuleContentSha256,
    artApprovalRuleTemplateContent,
    artLastModifiedUser,

    -- * ApprovalStateChangedEventMetadata
    ApprovalStateChangedEventMetadata (..),
    approvalStateChangedEventMetadata,
    ascemRevisionId,
    ascemApprovalStatus,

    -- * BatchAssociateApprovalRuleTemplateWithRepositoriesError
    BatchAssociateApprovalRuleTemplateWithRepositoriesError (..),
    batchAssociateApprovalRuleTemplateWithRepositoriesError,
    baartwreRepositoryName,
    baartwreErrorMessage,
    baartwreErrorCode,

    -- * BatchDescribeMergeConflictsError
    BatchDescribeMergeConflictsError (..),
    batchDescribeMergeConflictsError,
    bdmceFilePath,
    bdmceExceptionName,
    bdmceMessage,

    -- * BatchDisassociateApprovalRuleTemplateFromRepositoriesError
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError (..),
    batchDisassociateApprovalRuleTemplateFromRepositoriesError,
    bdartfreRepositoryName,
    bdartfreErrorMessage,
    bdartfreErrorCode,

    -- * BatchGetCommitsError
    BatchGetCommitsError (..),
    batchGetCommitsError,
    bgceCommitId,
    bgceErrorMessage,
    bgceErrorCode,

    -- * BlobMetadata
    BlobMetadata (..),
    blobMetadata,
    bmMode,
    bmBlobId,
    bmPath,

    -- * BranchInfo
    BranchInfo (..),
    branchInfo,
    biCommitId,
    biBranchName,

    -- * Comment
    Comment (..),
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

    -- * CommentsForComparedCommit
    CommentsForComparedCommit (..),
    commentsForComparedCommit,
    cfccBeforeBlobId,
    cfccRepositoryName,
    cfccBeforeCommitId,
    cfccAfterBlobId,
    cfccComments,
    cfccAfterCommitId,
    cfccLocation,

    -- * CommentsForPullRequest
    CommentsForPullRequest (..),
    commentsForPullRequest,
    cfprBeforeBlobId,
    cfprRepositoryName,
    cfprBeforeCommitId,
    cfprAfterBlobId,
    cfprPullRequestId,
    cfprComments,
    cfprAfterCommitId,
    cfprLocation,

    -- * Commit
    Commit (..),
    commit,
    cParents,
    cCommitId,
    cAdditionalData,
    cMessage,
    cTreeId,
    cAuthor,
    cCommitter,

    -- * Conflict
    Conflict (..),
    conflict,
    cMergeHunks,
    cConflictMetadata,

    -- * ConflictMetadata
    ConflictMetadata (..),
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

    -- * ConflictResolution
    ConflictResolution (..),
    conflictResolution,
    crDeleteFiles,
    crSetFileModes,
    crReplaceContents,

    -- * DeleteFileEntry
    DeleteFileEntry (..),
    deleteFileEntry,
    dfeFilePath,

    -- * Difference
    Difference (..),
    difference,
    dChangeType,
    dAfterBlob,
    dBeforeBlob,

    -- * Evaluation
    Evaluation (..),
    evaluation,
    eOverridden,
    eApprovalRulesSatisfied,
    eApproved,
    eApprovalRulesNotSatisfied,

    -- * File
    File (..),
    file,
    fAbsolutePath,
    fRelativePath,
    fBlobId,
    fFileMode,

    -- * FileMetadata
    FileMetadata (..),
    fileMetadata,
    fmAbsolutePath,
    fmBlobId,
    fmFileMode,

    -- * FileModes
    FileModes (..),
    fileModes,
    fmSource,
    fmDestination,
    fmBase,

    -- * FileSizes
    FileSizes (..),
    fileSizes,
    fsSource,
    fsDestination,
    fsBase,

    -- * Folder
    Folder (..),
    folder,
    folTreeId,
    folAbsolutePath,
    folRelativePath,

    -- * IsBinaryFile
    IsBinaryFile (..),
    isBinaryFile,
    ibfSource,
    ibfDestination,
    ibfBase,

    -- * Location
    Location (..),
    location,
    lFilePath,
    lFilePosition,
    lRelativeFileVersion,

    -- * MergeHunk
    MergeHunk (..),
    mergeHunk,
    mhSource,
    mhIsConflict,
    mhDestination,
    mhBase,

    -- * MergeHunkDetail
    MergeHunkDetail (..),
    mergeHunkDetail,
    mhdHunkContent,
    mhdStartLine,
    mhdEndLine,

    -- * MergeMetadata
    MergeMetadata (..),
    mergeMetadata,
    mmMergedBy,
    mmMergeCommitId,
    mmIsMerged,
    mmMergeOption,

    -- * MergeOperations
    MergeOperations (..),
    mergeOperations,
    moSource,
    moDestination,

    -- * ObjectTypes
    ObjectTypes (..),
    objectTypes,
    otSource,
    otDestination,
    otBase,

    -- * OriginApprovalRuleTemplate
    OriginApprovalRuleTemplate (..),
    originApprovalRuleTemplate,
    oartApprovalRuleTemplateId,
    oartApprovalRuleTemplateName,

    -- * PullRequest
    PullRequest (..),
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

    -- * PullRequestCreatedEventMetadata
    PullRequestCreatedEventMetadata (..),
    pullRequestCreatedEventMetadata,
    prcemRepositoryName,
    prcemSourceCommitId,
    prcemDestinationCommitId,
    prcemMergeBase,

    -- * PullRequestEvent
    PullRequestEvent (..),
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

    -- * PullRequestMergedStateChangedEventMetadata
    PullRequestMergedStateChangedEventMetadata (..),
    pullRequestMergedStateChangedEventMetadata,
    prmscemDestinationReference,
    prmscemMergeMetadata,
    prmscemRepositoryName,

    -- * PullRequestSourceReferenceUpdatedEventMetadata
    PullRequestSourceReferenceUpdatedEventMetadata (..),
    pullRequestSourceReferenceUpdatedEventMetadata,
    prsruemRepositoryName,
    prsruemBeforeCommitId,
    prsruemAfterCommitId,
    prsruemMergeBase,

    -- * PullRequestStatusChangedEventMetadata
    PullRequestStatusChangedEventMetadata (..),
    pullRequestStatusChangedEventMetadata,
    prscemPullRequestStatus,

    -- * PullRequestTarget
    PullRequestTarget (..),
    pullRequestTarget,
    prtDestinationReference,
    prtSourceCommit,
    prtMergeMetadata,
    prtRepositoryName,
    prtSourceReference,
    prtDestinationCommit,
    prtMergeBase,

    -- * PutFileEntry
    PutFileEntry (..),
    putFileEntry,
    pfeFileContent,
    pfeSourceFile,
    pfeFileMode,
    pfeFilePath,

    -- * ReactionForComment
    ReactionForComment (..),
    reactionForComment,
    rfcReaction,
    rfcReactionUsers,
    rfcReactionsFromDeletedUsersCount,

    -- * ReactionValueFormats
    ReactionValueFormats (..),
    reactionValueFormats,
    rvfUnicode,
    rvfShortCode,
    rvfEmoji,

    -- * ReplaceContentEntry
    ReplaceContentEntry (..),
    replaceContentEntry,
    rceContent,
    rceFileMode,
    rceFilePath,
    rceReplacementType,

    -- * RepositoryMetadata
    RepositoryMetadata (..),
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

    -- * RepositoryNameIdPair
    RepositoryNameIdPair (..),
    repositoryNameIdPair,
    rnipRepositoryName,
    rnipRepositoryId,

    -- * RepositoryTrigger
    RepositoryTrigger (..),
    repositoryTrigger,
    rtCustomData,
    rtBranches,
    rtName,
    rtDestinationARN,
    rtEvents,

    -- * RepositoryTriggerExecutionFailure
    RepositoryTriggerExecutionFailure (..),
    repositoryTriggerExecutionFailure,
    rtefFailureMessage,
    rtefTrigger,

    -- * SetFileModeEntry
    SetFileModeEntry (..),
    setFileModeEntry,
    sfmeFilePath,
    sfmeFileMode,

    -- * SourceFileSpecifier
    SourceFileSpecifier (..),
    sourceFileSpecifier,
    sfsIsMove,
    sfsFilePath,

    -- * SubModule
    SubModule (..),
    subModule,
    smCommitId,
    smAbsolutePath,
    smRelativePath,

    -- * SymbolicLink
    SymbolicLink (..),
    symbolicLink,
    slAbsolutePath,
    slRelativePath,
    slBlobId,
    slFileMode,

    -- * Target
    Target (..),
    target,
    tDestinationReference,
    tRepositoryName,
    tSourceReference,

    -- * UserInfo
    UserInfo (..),
    userInfo,
    uiName,
    uiDate,
    uiEmail,
  )
where

import Network.AWS.CodeCommit.Types.Approval
import Network.AWS.CodeCommit.Types.ApprovalRule
import Network.AWS.CodeCommit.Types.ApprovalRuleEventMetadata
import Network.AWS.CodeCommit.Types.ApprovalRuleOverriddenEventMetadata
import Network.AWS.CodeCommit.Types.ApprovalRuleTemplate
import Network.AWS.CodeCommit.Types.ApprovalState
import Network.AWS.CodeCommit.Types.ApprovalStateChangedEventMetadata
import Network.AWS.CodeCommit.Types.BatchAssociateApprovalRuleTemplateWithRepositoriesError
import Network.AWS.CodeCommit.Types.BatchDescribeMergeConflictsError
import Network.AWS.CodeCommit.Types.BatchDisassociateApprovalRuleTemplateFromRepositoriesError
import Network.AWS.CodeCommit.Types.BatchGetCommitsError
import Network.AWS.CodeCommit.Types.BlobMetadata
import Network.AWS.CodeCommit.Types.BranchInfo
import Network.AWS.CodeCommit.Types.ChangeTypeEnum
import Network.AWS.CodeCommit.Types.Comment
import Network.AWS.CodeCommit.Types.CommentsForComparedCommit
import Network.AWS.CodeCommit.Types.CommentsForPullRequest
import Network.AWS.CodeCommit.Types.Commit
import Network.AWS.CodeCommit.Types.Conflict
import Network.AWS.CodeCommit.Types.ConflictDetailLevelTypeEnum
import Network.AWS.CodeCommit.Types.ConflictMetadata
import Network.AWS.CodeCommit.Types.ConflictResolution
import Network.AWS.CodeCommit.Types.ConflictResolutionStrategyTypeEnum
import Network.AWS.CodeCommit.Types.DeleteFileEntry
import Network.AWS.CodeCommit.Types.Difference
import Network.AWS.CodeCommit.Types.Evaluation
import Network.AWS.CodeCommit.Types.File
import Network.AWS.CodeCommit.Types.FileMetadata
import Network.AWS.CodeCommit.Types.FileModeTypeEnum
import Network.AWS.CodeCommit.Types.FileModes
import Network.AWS.CodeCommit.Types.FileSizes
import Network.AWS.CodeCommit.Types.Folder
import Network.AWS.CodeCommit.Types.IsBinaryFile
import Network.AWS.CodeCommit.Types.Location
import Network.AWS.CodeCommit.Types.MergeHunk
import Network.AWS.CodeCommit.Types.MergeHunkDetail
import Network.AWS.CodeCommit.Types.MergeMetadata
import Network.AWS.CodeCommit.Types.MergeOperations
import Network.AWS.CodeCommit.Types.MergeOptionTypeEnum
import Network.AWS.CodeCommit.Types.ObjectTypeEnum
import Network.AWS.CodeCommit.Types.ObjectTypes
import Network.AWS.CodeCommit.Types.OrderEnum
import Network.AWS.CodeCommit.Types.OriginApprovalRuleTemplate
import Network.AWS.CodeCommit.Types.OverrideStatus
import Network.AWS.CodeCommit.Types.PullRequest
import Network.AWS.CodeCommit.Types.PullRequestCreatedEventMetadata
import Network.AWS.CodeCommit.Types.PullRequestEvent
import Network.AWS.CodeCommit.Types.PullRequestEventType
import Network.AWS.CodeCommit.Types.PullRequestMergedStateChangedEventMetadata
import Network.AWS.CodeCommit.Types.PullRequestSourceReferenceUpdatedEventMetadata
import Network.AWS.CodeCommit.Types.PullRequestStatusChangedEventMetadata
import Network.AWS.CodeCommit.Types.PullRequestStatusEnum
import Network.AWS.CodeCommit.Types.PullRequestTarget
import Network.AWS.CodeCommit.Types.PutFileEntry
import Network.AWS.CodeCommit.Types.ReactionForComment
import Network.AWS.CodeCommit.Types.ReactionValueFormats
import Network.AWS.CodeCommit.Types.RelativeFileVersionEnum
import Network.AWS.CodeCommit.Types.ReplaceContentEntry
import Network.AWS.CodeCommit.Types.ReplacementTypeEnum
import Network.AWS.CodeCommit.Types.RepositoryMetadata
import Network.AWS.CodeCommit.Types.RepositoryNameIdPair
import Network.AWS.CodeCommit.Types.RepositoryTrigger
import Network.AWS.CodeCommit.Types.RepositoryTriggerEventEnum
import Network.AWS.CodeCommit.Types.RepositoryTriggerExecutionFailure
import Network.AWS.CodeCommit.Types.SetFileModeEntry
import Network.AWS.CodeCommit.Types.SortByEnum
import Network.AWS.CodeCommit.Types.SourceFileSpecifier
import Network.AWS.CodeCommit.Types.SubModule
import Network.AWS.CodeCommit.Types.SymbolicLink
import Network.AWS.CodeCommit.Types.Target
import Network.AWS.CodeCommit.Types.UserInfo
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-04-13@ of the Amazon CodeCommit SDK configuration.
codeCommit :: Service
codeCommit =
  Service
    { _svcAbbrev = "CodeCommit",
      _svcSigner = v4,
      _svcPrefix = "codecommit",
      _svcVersion = "2015-04-13",
      _svcEndpoint = defaultEndpoint codeCommit,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CodeCommit",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has
          ( hasCode "ProvisionedThroughputExceededException"
              . hasStatus 400
          )
          e =
        Just "throughput_exceeded"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has
          (hasCode "RequestThrottledException" . hasStatus 400)
          e =
        Just "request_throttled_exception"
      | has
          (hasCode "ThrottledException" . hasStatus 400)
          e =
        Just "throttled_exception"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | has (hasStatus 500) e = Just "general_server_error"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing

-- | The specified Amazon Resource Name (ARN) does not exist in the AWS account.
_ActorDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_ActorDoesNotExistException =
  _MatchServiceError
    codeCommit
    "ActorDoesNotExistException"

-- | The pull request status update is not valid. The only valid update is from @OPEN@ to @CLOSED@ .
_InvalidPullRequestStatusUpdateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPullRequestStatusUpdateException =
  _MatchServiceError
    codeCommit
    "InvalidPullRequestStatusUpdateException"

-- | The user name is not valid because it has exceeded the character limit for author names.
_NameLengthExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_NameLengthExceededException =
  _MatchServiceError
    codeCommit
    "NameLengthExceededException"

-- | An approval rule with that name already exists. Approval rule names must be unique within the scope of a pull request.
_ApprovalRuleNameAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ApprovalRuleNameAlreadyExistsException =
  _MatchServiceError
    codeCommit
    "ApprovalRuleNameAlreadyExistsException"

-- | A pull request ID is required, but none was provided.
_PullRequestIdRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_PullRequestIdRequiredException =
  _MatchServiceError
    codeCommit
    "PullRequestIdRequiredException"

-- | The specified conflict detail level is not valid.
_InvalidConflictDetailLevelException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidConflictDetailLevelException =
  _MatchServiceError
    codeCommit
    "InvalidConflictDetailLevelException"

-- | The pull request ID is not valid. Make sure that you have provided the full ID and that the pull request is in the specified repository, and then try again.
_InvalidPullRequestIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPullRequestIdException =
  _MatchServiceError
    codeCommit
    "InvalidPullRequestIdException"

-- | A pull request target is required. It cannot be empty or null. A pull request target must contain the full values for the repository name, source branch, and destination branch for the pull request.
_TargetRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_TargetRequiredException =
  _MatchServiceError
    codeCommit
    "TargetRequiredException"

-- | A commit was not specified.
_CommitRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_CommitRequiredException =
  _MatchServiceError
    codeCommit
    "CommitRequiredException"

-- | A file cannot be added to the repository because the specified file name has the same name as a directory in this repository. Either provide another name for the file, or add the file in a directory that does not match the file name.
_FileNameConflictsWithDirectoryNameException :: AsError a => Getting (First ServiceError) a ServiceError
_FileNameConflictsWithDirectoryNameException =
  _MatchServiceError
    codeCommit
    "FileNameConflictsWithDirectoryNameException"

-- | The specified reference does not exist. You must provide a full commit ID.
_ReferenceDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_ReferenceDoesNotExistException =
  _MatchServiceError
    codeCommit
    "ReferenceDoesNotExistException"

-- | No encryption key was found.
_EncryptionKeyNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_EncryptionKeyNotFoundException =
  _MatchServiceError
    codeCommit
    "EncryptionKeyNotFoundException"

-- | An array of target objects is required. It cannot be empty or null.
_TargetsRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_TargetsRequiredException =
  _MatchServiceError
    codeCommit
    "TargetsRequiredException"

-- | The comment is empty. You must provide some content for a comment. The content cannot be null.
_CommentContentRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_CommentContentRequiredException =
  _MatchServiceError
    codeCommit
    "CommentContentRequiredException"

-- | The specified tag is not valid. Key names cannot be prefixed with aws:.
_InvalidSystemTagUsageException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSystemTagUsageException =
  _MatchServiceError
    codeCommit
    "InvalidSystemTagUsageException"

-- | The commit cannot be created because no files have been specified as added, updated, or changed (PutFile or DeleteFile) for the commit.
_FileEntryRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_FileEntryRequiredException =
  _MatchServiceError
    codeCommit
    "FileEntryRequiredException"

-- | The targets for the pull request is not valid or not in a valid format. Targets are a list of target objects. Each target object must contain the full values for the repository name, source branch, and destination branch for a pull request.
_InvalidTargetsException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTargetsException =
  _MatchServiceError
    codeCommit
    "InvalidTargetsException"

-- | The pull request cannot be merged automatically into the destination branch. You must manually merge the branches and resolve any conflicts.
_ManualMergeRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ManualMergeRequiredException =
  _MatchServiceError
    codeCommit
    "ManualMergeRequiredException"

-- | Cannot create the branch with the specified name because the commit conflicts with an existing branch with the same name. Branch names must be unique.
_BranchNameExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_BranchNameExistsException =
  _MatchServiceError
    codeCommit
    "BranchNameExistsException"

-- | The parent commit ID is not valid because it does not exist. The specified parent commit ID does not exist in the specified branch of the repository.
_ParentCommitDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_ParentCommitDoesNotExistException =
  _MatchServiceError
    codeCommit
    "ParentCommitDoesNotExistException"

-- | The commit cannot be created because one or more changes in this commit duplicate actions in the same file path. For example, you cannot make the same delete request to the same file in the same file path twice, or make a delete request and a move request to the same file as part of the same commit.
_SamePathRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_SamePathRequestException =
  _MatchServiceError
    codeCommit
    "SamePathRequestException"

-- | The specified Amazon Resource Name (ARN) does not exist in the AWS account.
_AuthorDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_AuthorDoesNotExistException =
  _MatchServiceError
    codeCommit
    "AuthorDoesNotExistException"

-- | The maximum number of tags for an AWS CodeCommit resource has been exceeded.
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException =
  _MatchServiceError
    codeCommit
    "TooManyTagsException"

-- | The source branch and destination branch for the pull request are the same. You must specify different branches for the source and destination.
_SourceAndDestinationAreSameException :: AsError a => Getting (First ServiceError) a ServiceError
_SourceAndDestinationAreSameException =
  _MatchServiceError
    codeCommit
    "SourceAndDestinationAreSameException"

-- | An encryption integrity check failed.
_EncryptionIntegrityChecksFailedException :: AsError a => Getting (First ServiceError) a ServiceError
_EncryptionIntegrityChecksFailedException =
  _MatchServiceError
    codeCommit
    "EncryptionIntegrityChecksFailedException"

-- | The description for the approval rule template is not valid because it exceeds the maximum characters allowed for a description. For more information about limits in AWS CodeCommit, see <https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html AWS CodeCommit User Guide> .
_InvalidApprovalRuleTemplateDescriptionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidApprovalRuleTemplateDescriptionException =
  _MatchServiceError
    codeCommit
    "InvalidApprovalRuleTemplateDescriptionException"

-- | This comment has already been deleted. You cannot edit or delete a deleted comment.
_CommentDeletedException :: AsError a => Getting (First ServiceError) a ServiceError
_CommentDeletedException =
  _MatchServiceError
    codeCommit
    "CommentDeletedException"

-- | Automerge was specified for resolving the conflict, but the replacement type is not valid or content is missing.
_InvalidReplacementContentException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidReplacementContentException =
  _MatchServiceError
    codeCommit
    "InvalidReplacementContentException"

-- | At least one event for the trigger is required, but was not specified.
_RepositoryTriggerEventsListRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryTriggerEventsListRequiredException =
  _MatchServiceError
    codeCommit
    "RepositoryTriggerEventsListRequiredException"

-- | The file cannot be added because it is empty. Empty files cannot be added to the repository with this API.
_FileContentRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_FileContentRequiredException =
  _MatchServiceError
    codeCommit
    "FileContentRequiredException"

-- | The commit cannot be created because no source files or file content have been specified for the commit.
_SourceFileOrContentRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_SourceFileOrContentRequiredException =
  _MatchServiceError
    codeCommit
    "SourceFileOrContentRequiredException"

-- | The title of the pull request is not valid. Pull request titles cannot exceed 100 characters in length.
_InvalidTitleException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTitleException =
  _MatchServiceError
    codeCommit
    "InvalidTitleException"

-- | The content for the approval rule is not valid.
_InvalidApprovalRuleContentException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidApprovalRuleContentException =
  _MatchServiceError
    codeCommit
    "InvalidApprovalRuleContentException"

-- | The source commit specifier is not valid. You must provide a valid branch name, tag, or full commit ID.
_InvalidSourceCommitSpecifierException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSourceCommitSpecifierException =
  _MatchServiceError
    codeCommit
    "InvalidSourceCommitSpecifierException"

-- | The specified conflict resolution list is not valid.
_InvalidConflictResolutionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidConflictResolutionException =
  _MatchServiceError
    codeCommit
    "InvalidConflictResolutionException"

-- | The override status is not valid. Valid statuses are OVERRIDE and REVOKE.
_InvalidOverrideStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOverrideStatusException =
  _MatchServiceError
    codeCommit
    "InvalidOverrideStatusException"

-- | A pull request status is required, but none was provided.
_PullRequestStatusRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_PullRequestStatusRequiredException =
  _MatchServiceError
    codeCommit
    "PullRequestStatusRequiredException"

-- | The number of items to compare between the source or destination branches and the merge base has exceeded the maximum allowed.
_MaximumItemsToCompareExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaximumItemsToCompareExceededException =
  _MatchServiceError
    codeCommit
    "MaximumItemsToCompareExceededException"

-- | The pull request status is not valid. The only valid values are @OPEN@ and @CLOSED@ .
_InvalidPullRequestStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPullRequestStatusException =
  _MatchServiceError
    codeCommit
    "InvalidPullRequestStatusException"

-- | A parent commit ID is required. To view the full commit ID of a branch in a repository, use 'GetBranch' or a Git command (for example, git pull or git log).
_ParentCommitIdRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ParentCommitIdRequiredException =
  _MatchServiceError
    codeCommit
    "ParentCommitIdRequiredException"

-- | The specified repository does not exist.
_RepositoryDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryDoesNotExistException =
  _MatchServiceError
    codeCommit
    "RepositoryDoesNotExistException"

-- | The pull request cannot be merged because one or more approval rules applied to the pull request have conditions that have not been met.
_PullRequestApprovalRulesNotSatisfiedException :: AsError a => Getting (First ServiceError) a ServiceError
_PullRequestApprovalRulesNotSatisfiedException =
  _MatchServiceError
    codeCommit
    "PullRequestApprovalRulesNotSatisfiedException"

-- | The content for the approval rule is empty. You must provide some content for an approval rule. The content cannot be null.
_ApprovalRuleContentRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ApprovalRuleContentRequiredException =
  _MatchServiceError
    codeCommit
    "ApprovalRuleContentRequiredException"

-- | A pull request title is required. It cannot be empty or null.
_TitleRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_TitleRequiredException =
  _MatchServiceError
    codeCommit
    "TitleRequiredException"

-- | The file cannot be added because it is too large. The maximum file size is 6 MB, and the combined file content change size is 7 MB. Consider making these changes using a Git client.
_FileContentSizeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_FileContentSizeLimitExceededException =
  _MatchServiceError
    codeCommit
    "FileContentSizeLimitExceededException"

-- | The name of the trigger is not valid.
_InvalidRepositoryTriggerNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRepositoryTriggerNameException =
  _MatchServiceError
    codeCommit
    "InvalidRepositoryTriggerNameException"

-- | A name for the trigger is required, but was not specified.
_RepositoryTriggerNameRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryTriggerNameRequiredException =
  _MatchServiceError
    codeCommit
    "RepositoryTriggerNameRequiredException"

-- | The maximum number of approval rule templates has been exceeded for this AWS Region.
_NumberOfRuleTemplatesExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_NumberOfRuleTemplatesExceededException =
  _MatchServiceError
    codeCommit
    "NumberOfRuleTemplatesExceededException"

-- | A repository name is required, but was not specified.
_RepositoryNameRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryNameRequiredException =
  _MatchServiceError
    codeCommit
    "RepositoryNameRequiredException"

-- | The specified file mode permission is not valid. For a list of valid file mode permissions, see 'PutFile' .
_InvalidFileModeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFileModeException =
  _MatchServiceError
    codeCommit
    "InvalidFileModeException"

-- | One or more events specified for the trigger is not valid. Check to make sure that all events specified match the requirements for allowed events.
_InvalidRepositoryTriggerEventsException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRepositoryTriggerEventsException =
  _MatchServiceError
    codeCommit
    "InvalidRepositoryTriggerEventsException"

-- | The specified path is not valid.
_InvalidPathException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPathException =
  _MatchServiceError
    codeCommit
    "InvalidPathException"

-- | The specified target branch is not valid.
_InvalidTargetBranchException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTargetBranchException =
  _MatchServiceError
    codeCommit
    "InvalidTargetBranchException"

-- | The Amazon Resource Name (ARN) is not valid. Make sure that you have provided the full ARN for the user who initiated the change for the pull request, and then try again.
_InvalidActorARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidActorARNException =
  _MatchServiceError
    codeCommit
    "InvalidActorArnException"

-- | A revision ID is required, but was not provided.
_RevisionIdRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_RevisionIdRequiredException =
  _MatchServiceError
    codeCommit
    "RevisionIdRequiredException"

-- | The specified blob is not valid.
_InvalidBlobIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidBlobIdException =
  _MatchServiceError
    codeCommit
    "InvalidBlobIdException"

-- | The number of specified files to change as part of this commit exceeds the maximum number of files that can be changed in a single commit. Consider using a Git client for these changes.
_MaximumFileEntriesExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaximumFileEntriesExceededException =
  _MatchServiceError
    codeCommit
    "MaximumFileEntriesExceededException"

-- | An approval rule template name is required, but was not specified.
_ApprovalRuleTemplateNameRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ApprovalRuleTemplateNameRequiredException =
  _MatchServiceError
    codeCommit
    "ApprovalRuleTemplateNameRequiredException"

-- | At least one repository name object is required, but was not specified.
_RepositoryNamesRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryNamesRequiredException =
  _MatchServiceError
    codeCommit
    "RepositoryNamesRequiredException"

-- | The pull request ID could not be found. Make sure that you have specified the correct repository name and pull request ID, and then try again.
_PullRequestDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_PullRequestDoesNotExistException =
  _MatchServiceError
    codeCommit
    "PullRequestDoesNotExistException"

-- | A replacement type is required.
_ReplacementTypeRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ReplacementTypeRequiredException =
  _MatchServiceError
    codeCommit
    "ReplacementTypeRequiredException"

-- | Automerge was specified for resolving the conflict, but the specified replacement type is not valid.
_InvalidReplacementTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidReplacementTypeException =
  _MatchServiceError
    codeCommit
    "InvalidReplacementTypeException"

-- | The specified file exceeds the file size limit for AWS CodeCommit. For more information about limits in AWS CodeCommit, see <https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html AWS CodeCommit User Guide> .
_FileTooLargeException :: AsError a => Getting (First ServiceError) a ServiceError
_FileTooLargeException =
  _MatchServiceError
    codeCommit
    "FileTooLargeException"

-- | The approval rule cannot be deleted from the pull request because it was created by an approval rule template and applied to the pull request automatically.
_CannotDeleteApprovalRuleFromTemplateException :: AsError a => Getting (First ServiceError) a ServiceError
_CannotDeleteApprovalRuleFromTemplateException =
  _MatchServiceError
    codeCommit
    "CannotDeleteApprovalRuleFromTemplateException"

-- | The number of reactions has been exceeded. Reactions are limited to one reaction per user for each individual comment ID.
_ReactionLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ReactionLimitExceededException =
  _MatchServiceError
    codeCommit
    "ReactionLimitExceededException"

-- | The revision ID provided in the request does not match the current revision ID. Use GetPullRequest to retrieve the current revision ID.
_RevisionNotCurrentException :: AsError a => Getting (First ServiceError) a ServiceError
_RevisionNotCurrentException =
  _MatchServiceError
    codeCommit
    "RevisionNotCurrentException"

-- | The name for the approval rule is not valid.
_InvalidApprovalRuleNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidApprovalRuleNameException =
  _MatchServiceError
    codeCommit
    "InvalidApprovalRuleNameException"

-- | The specified commit ID does not exist.
_CommitIdDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_CommitIdDoesNotExistException =
  _MatchServiceError
    codeCommit
    "CommitIdDoesNotExistException"

-- | The list of triggers for the repository is required, but was not specified.
_RepositoryTriggersListRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryTriggersListRequiredException =
  _MatchServiceError
    codeCommit
    "RepositoryTriggersListRequiredException"

-- | Either the enum is not in a valid format, or the specified file version enum is not valid in respect to the current file version.
_InvalidRelativeFileVersionEnumException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRelativeFileVersionEnumException =
  _MatchServiceError
    codeCommit
    "InvalidRelativeFileVersionEnumException"

-- | The tag policy is not valid.
_TagPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_TagPolicyException =
  _MatchServiceError codeCommit "TagPolicyException"

-- | The specified approval rule does not exist.
_ApprovalRuleDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_ApprovalRuleDoesNotExistException =
  _MatchServiceError
    codeCommit
    "ApprovalRuleDoesNotExistException"

-- | At least one branch name is required, but was not specified in the trigger configuration.
_RepositoryTriggerBranchNameListRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryTriggerBranchNameListRequiredException =
  _MatchServiceError
    codeCommit
    "RepositoryTriggerBranchNameListRequiredException"

-- | The client request token is not valid.
_InvalidClientRequestTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidClientRequestTokenException =
  _MatchServiceError
    codeCommit
    "InvalidClientRequestTokenException"

-- | The client request token is not valid. Either the token is not in a valid format, or the token has been used in a previous request and cannot be reused.
_IdempotencyParameterMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_IdempotencyParameterMismatchException =
  _MatchServiceError
    codeCommit
    "IdempotencyParameterMismatchException"

-- | The Amazon Resource Name (ARN) for the trigger is not valid for the specified destination. The most common reason for this error is that the ARN does not meet the requirements for the service type.
_InvalidRepositoryTriggerDestinationARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRepositoryTriggerDestinationARNException =
  _MatchServiceError
    codeCommit
    "InvalidRepositoryTriggerDestinationArnException"

-- | A branch name is required, but was not specified.
_BranchNameRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_BranchNameRequiredException =
  _MatchServiceError
    codeCommit
    "BranchNameRequiredException"

-- | A destination ARN for the target service for the trigger is required, but was not specified.
_RepositoryTriggerDestinationARNRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryTriggerDestinationARNRequiredException =
  _MatchServiceError
    codeCommit
    "RepositoryTriggerDestinationArnRequiredException"

-- | The encryption key is not available.
_EncryptionKeyUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_EncryptionKeyUnavailableException =
  _MatchServiceError
    codeCommit
    "EncryptionKeyUnavailableException"

-- | The specified conflict resolution strategy is not valid.
_InvalidConflictResolutionStrategyException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidConflictResolutionStrategyException =
  _MatchServiceError
    codeCommit
    "InvalidConflictResolutionStrategyException"

-- | More than one conflict resolution entries exists for the conflict. A conflict can have only one conflict resolution entry.
_MultipleConflictResolutionEntriesException :: AsError a => Getting (First ServiceError) a ServiceError
_MultipleConflictResolutionEntriesException =
  _MatchServiceError
    codeCommit
    "MultipleConflictResolutionEntriesException"

-- | The specified file does not exist. Verify that you have used the correct file name, full path, and extension.
_FileDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_FileDoesNotExistException =
  _MatchServiceError
    codeCommit
    "FileDoesNotExistException"

-- | A list of tag keys is required. The list cannot be empty or null.
_TagKeysListRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_TagKeysListRequiredException =
  _MatchServiceError
    codeCommit
    "TagKeysListRequiredException"

-- | The specified reference name format is not valid. Reference names must conform to the Git references format (for example, refs/heads/master). For more information, see <https://git-scm.com/book/en/v2/Git-Internals-Git-References Git Internals - Git References> or consult your Git documentation.
_InvalidReferenceNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidReferenceNameException =
  _MatchServiceError
    codeCommit
    "InvalidReferenceNameException"

-- | A commit ID was not specified.
_CommitIdRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_CommitIdRequiredException =
  _MatchServiceError
    codeCommit
    "CommitIdRequiredException"

-- | A reference name is required, but none was provided.
_ReferenceNameRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ReferenceNameRequiredException =
  _MatchServiceError
    codeCommit
    "ReferenceNameRequiredException"

-- | The maximum number of approval rule templates for a repository has been exceeded. You cannot associate more than 25 approval rule templates with a repository.
_MaximumRuleTemplatesAssociatedWithRepositoryException :: AsError a => Getting (First ServiceError) a ServiceError
_MaximumRuleTemplatesAssociatedWithRepositoryException =
  _MatchServiceError
    codeCommit
    "MaximumRuleTemplatesAssociatedWithRepositoryException"

-- | The commit message is too long. Provide a shorter string.
_CommitMessageLengthExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_CommitMessageLengthExceededException =
  _MatchServiceError
    codeCommit
    "CommitMessageLengthExceededException"

-- | The number of approvals required for the approval rule exceeds the maximum number allowed.
_MaximumNumberOfApprovalsExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaximumNumberOfApprovalsExceededException =
  _MatchServiceError
    codeCommit
    "MaximumNumberOfApprovalsExceededException"

-- | The list of tags is not valid.
_InvalidTagKeysListException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagKeysListException =
  _MatchServiceError
    codeCommit
    "InvalidTagKeysListException"

-- | The encryption key is disabled.
_EncryptionKeyDisabledException :: AsError a => Getting (First ServiceError) a ServiceError
_EncryptionKeyDisabledException =
  _MatchServiceError
    codeCommit
    "EncryptionKeyDisabledException"

-- | A file cannot be added to the repository because the specified path name has the same name as a file that already exists in this repository. Either provide a different name for the file, or specify a different path for the file.
_DirectoryNameConflictsWithFileNameException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryNameConflictsWithFileNameException =
  _MatchServiceError
    codeCommit
    "DirectoryNameConflictsWithFileNameException"

-- | The specified sort by value is not valid.
_InvalidSortByException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSortByException =
  _MatchServiceError
    codeCommit
    "InvalidSortByException"

-- | The destination commit specifier is not valid. You must provide a valid branch name, tag, or full commit ID.
_InvalidDestinationCommitSpecifierException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDestinationCommitSpecifierException =
  _MatchServiceError
    codeCommit
    "InvalidDestinationCommitSpecifierException"

-- | No comment exists with the provided ID. Verify that you have used the correct ID, and then try again.
_CommentDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_CommentDoesNotExistException =
  _MatchServiceError
    codeCommit
    "CommentDoesNotExistException"

-- | You cannot create an approval rule template with that name because a template with that name already exists in this AWS Region for your AWS account. Approval rule template names must be unique.
_ApprovalRuleTemplateNameAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ApprovalRuleTemplateNameAlreadyExistsException =
  _MatchServiceError
    codeCommit
    "ApprovalRuleTemplateNameAlreadyExistsException"

-- | One or more branch names specified for the trigger is not valid.
_InvalidRepositoryTriggerBranchNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRepositoryTriggerBranchNameException =
  _MatchServiceError
    codeCommit
    "InvalidRepositoryTriggerBranchNameException"

-- | You cannot create the pull request because the repository has too many open pull requests. The maximum number of open pull requests for a repository is 1,000. Close one or more open pull requests, and then try again.
_MaximumOpenPullRequestsExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaximumOpenPullRequestsExceededException =
  _MatchServiceError
    codeCommit
    "MaximumOpenPullRequestsExceededException"

-- | The pull request status cannot be updated because it is already closed.
_PullRequestAlreadyClosedException :: AsError a => Getting (First ServiceError) a ServiceError
_PullRequestAlreadyClosedException =
  _MatchServiceError
    codeCommit
    "PullRequestAlreadyClosedException"

-- | The specified commit is not valid.
_InvalidCommitException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCommitException =
  _MatchServiceError
    codeCommit
    "InvalidCommitException"

-- | The specified reference is not a supported type.
_ReferenceTypeNotSupportedException :: AsError a => Getting (First ServiceError) a ServiceError
_ReferenceTypeNotSupportedException =
  _MatchServiceError
    codeCommit
    "ReferenceTypeNotSupportedException"

-- | You cannot modify or delete this comment. Only comment authors can modify or delete their comments.
_CommentNotCreatedByCallerException :: AsError a => Getting (First ServiceError) a ServiceError
_CommentNotCreatedByCallerException =
  _MatchServiceError
    codeCommit
    "CommentNotCreatedByCallerException"

-- | The target for the pull request is not valid. A target must contain the full values for the repository name, source branch, and destination branch for the pull request.
_InvalidTargetException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTargetException =
  _MatchServiceError
    codeCommit
    "InvalidTargetException"

-- | The custom data provided for the trigger is not valid.
_InvalidRepositoryTriggerCustomDataException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRepositoryTriggerCustomDataException =
  _MatchServiceError
    codeCommit
    "InvalidRepositoryTriggerCustomDataException"

-- | The pull request has already had its approval rules set to override.
_OverrideAlreadySetException :: AsError a => Getting (First ServiceError) a ServiceError
_OverrideAlreadySetException =
  _MatchServiceError
    codeCommit
    "OverrideAlreadySetException"

-- | The specified continuation token is not valid.
_InvalidContinuationTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidContinuationTokenException =
  _MatchServiceError
    codeCommit
    "InvalidContinuationTokenException"

-- | The AWS Region for the trigger target does not match the AWS Region for the repository. Triggers must be created in the same Region as the target for the trigger.
_InvalidRepositoryTriggerRegionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRepositoryTriggerRegionException =
  _MatchServiceError
    codeCommit
    "InvalidRepositoryTriggerRegionException"

-- | The value of the reaction is not valid. For more information, see the <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit User Guide> .
_InvalidReactionValueException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidReactionValueException =
  _MatchServiceError
    codeCommit
    "InvalidReactionValueException"

-- | The divergence between the tips of the provided commit specifiers is too great to determine whether there might be any merge conflicts. Locally compare the specifiers using @git diff@ or a diff tool.
_TipsDivergenceExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_TipsDivergenceExceededException =
  _MatchServiceError
    codeCommit
    "TipsDivergenceExceededException"

-- | An encryption key could not be accessed.
_EncryptionKeyAccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_EncryptionKeyAccessDeniedException =
  _MatchServiceError
    codeCommit
    "EncryptionKeyAccessDeniedException"

-- | A reaction value is required.
_ReactionValueRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ReactionValueRequiredException =
  _MatchServiceError
    codeCommit
    "ReactionValueRequiredException"

-- | A valid Amazon Resource Name (ARN) for an AWS CodeCommit resource is required. For a list of valid resources in AWS CodeCommit, see <https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats CodeCommit Resources and Operations> in the AWS CodeCommit User Guide.
_ResourceARNRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceARNRequiredException =
  _MatchServiceError
    codeCommit
    "ResourceArnRequiredException"

-- | The specified path does not exist.
_PathDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_PathDoesNotExistException =
  _MatchServiceError
    codeCommit
    "PathDoesNotExistException"

-- | USE_NEW_CONTENT was specified, but no replacement content has been provided.
_ReplacementContentRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ReplacementContentRequiredException =
  _MatchServiceError
    codeCommit
    "ReplacementContentRequiredException"

-- | The value for the resource ARN is not valid. For more information about resources in AWS CodeCommit, see <https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats CodeCommit Resources and Operations> in the AWS CodeCommit User Guide.
_InvalidResourceARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResourceARNException =
  _MatchServiceError
    codeCommit
    "InvalidResourceArnException"

-- | The file could not be added because the provided parent commit ID is not the current tip of the specified branch. To view the full commit ID of the current head of the branch, use 'GetBranch' .
_ParentCommitIdOutdatedException :: AsError a => Getting (First ServiceError) a ServiceError
_ParentCommitIdOutdatedException =
  _MatchServiceError
    codeCommit
    "ParentCommitIdOutdatedException"

-- | The specified value for the number of merge hunks to return is not valid.
_InvalidMaxMergeHunksException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidMaxMergeHunksException =
  _MatchServiceError
    codeCommit
    "InvalidMaxMergeHunksException"

-- | The commit cannot be created because one of the changes specifies copying or moving a .gitkeep file.
_RestrictedSourceFileException :: AsError a => Getting (First ServiceError) a ServiceError
_RestrictedSourceFileException =
  _MatchServiceError
    codeCommit
    "RestrictedSourceFileException"

-- | The position is not valid. Make sure that the line number exists in the version of the file you want to comment on.
_InvalidFilePositionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFilePositionException =
  _MatchServiceError
    codeCommit
    "InvalidFilePositionException"

-- | The approval rule cannot be modified for the pull request because it was created by an approval rule template and applied to the pull request automatically.
_CannotModifyApprovalRuleFromTemplateException :: AsError a => Getting (First ServiceError) a ServiceError
_CannotModifyApprovalRuleFromTemplateException =
  _MatchServiceError
    codeCommit
    "CannotModifyApprovalRuleFromTemplateException"

-- | The specified value for the number of conflict files to return is not valid.
_InvalidMaxConflictFilesException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidMaxConflictFilesException =
  _MatchServiceError
    codeCommit
    "InvalidMaxConflictFilesException"

-- | The comment is too large. Comments are limited to 1,000 characters.
_CommentContentSizeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_CommentContentSizeLimitExceededException =
  _MatchServiceError
    codeCommit
    "CommentContentSizeLimitExceededException"

-- | The state for the approval is not valid. Valid values include APPROVE and REVOKE.
_InvalidApprovalStateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidApprovalStateException =
  _MatchServiceError
    codeCommit
    "InvalidApprovalStateException"

-- | The number of branches for the trigger was exceeded.
_MaximumBranchesExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaximumBranchesExceededException =
  _MatchServiceError
    codeCommit
    "MaximumBranchesExceededException"

-- | An override status is required, but no value was provided. Valid values include OVERRIDE and REVOKE.
_OverrideStatusRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_OverrideStatusRequiredException =
  _MatchServiceError
    codeCommit
    "OverrideStatusRequiredException"

-- | The pull request event type is not valid.
_InvalidPullRequestEventTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPullRequestEventTypeException =
  _MatchServiceError
    codeCommit
    "InvalidPullRequestEventTypeException"

-- | The content of the approval rule template is not valid.
_InvalidApprovalRuleTemplateContentException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidApprovalRuleTemplateContentException =
  _MatchServiceError
    codeCommit
    "InvalidApprovalRuleTemplateContentException"

-- | The maximum number of allowed commit IDs in a batch request is 100. Verify that your batch requests contains no more than 100 commit IDs, and then try again.
_CommitIdsLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_CommitIdsLimitExceededException =
  _MatchServiceError
    codeCommit
    "CommitIdsLimitExceededException"

-- | An approval state is required, but was not specified.
_ApprovalStateRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ApprovalStateRequiredException =
  _MatchServiceError
    codeCommit
    "ApprovalStateRequiredException"

-- | The Amazon Resource Name (ARN) is not valid. Make sure that you have provided the full ARN for the author of the pull request, and then try again.
_InvalidAuthorARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAuthorARNException =
  _MatchServiceError
    codeCommit
    "InvalidAuthorArnException"

-- | The number of allowed conflict resolution entries was exceeded.
_MaximumConflictResolutionEntriesExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaximumConflictResolutionEntriesExceededException =
  _MatchServiceError
    codeCommit
    "MaximumConflictResolutionEntriesExceededException"

-- | The parent commit ID is not valid. The commit ID cannot be empty, and must match the head commit ID for the branch of the repository where you want to add or update a file.
_InvalidParentCommitIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParentCommitIdException =
  _MatchServiceError
    codeCommit
    "InvalidParentCommitIdException"

-- | The repository does not contain any pull requests with that pull request ID. Use GetPullRequest to verify the correct repository name for the pull request ID.
_RepositoryNotAssociatedWithPullRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryNotAssociatedWithPullRequestException =
  _MatchServiceError
    codeCommit
    "RepositoryNotAssociatedWithPullRequestException"

-- | The content for the approval rule template is empty. You must provide some content for an approval rule template. The content cannot be null.
_ApprovalRuleTemplateContentRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ApprovalRuleTemplateContentRequiredException =
  _MatchServiceError
    codeCommit
    "ApprovalRuleTemplateContentRequiredException"

-- | The merge cannot be completed because the target branch has been modified. Another user might have modified the target branch while the merge was in progress. Wait a few minutes, and then try again.
_ConcurrentReferenceUpdateException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentReferenceUpdateException =
  _MatchServiceError
    codeCommit
    "ConcurrentReferenceUpdateException"

-- | The number of files to load exceeds the allowed limit.
_MaximumFileContentToLoadExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaximumFileContentToLoadExceededException =
  _MatchServiceError
    codeCommit
    "MaximumFileContentToLoadExceededException"

-- | A map of tags is required.
_TagsMapRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_TagsMapRequiredException =
  _MatchServiceError
    codeCommit
    "TagsMapRequiredException"

-- | A specified repository name is not valid.
_InvalidRepositoryNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRepositoryNameException =
  _MatchServiceError
    codeCommit
    "InvalidRepositoryNameException"

-- | The commit cannot be created because at least one of the overall changes in the commit results in a folder whose contents exceed the limit of 6 MB. Either reduce the number and size of your changes, or split the changes across multiple folders.
_FolderContentSizeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_FolderContentSizeLimitExceededException =
  _MatchServiceError
    codeCommit
    "FolderContentSizeLimitExceededException"

-- | A list of commit IDs is required, but was either not specified or the list was empty.
_CommitIdsListRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_CommitIdsListRequiredException =
  _MatchServiceError
    codeCommit
    "CommitIdsListRequiredException"

-- | The commit cannot be created because no file mode has been specified. A file mode is required to update mode permissions for a file.
_FileModeRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_FileModeRequiredException =
  _MatchServiceError
    codeCommit
    "FileModeRequiredException"

-- | The map of tags is not valid.
_InvalidTagsMapException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagsMapException =
  _MatchServiceError
    codeCommit
    "InvalidTagsMapException"

-- | A repository resource limit was exceeded.
_RepositoryLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryLimitExceededException =
  _MatchServiceError
    codeCommit
    "RepositoryLimitExceededException"

-- | The approval rule cannot be added. The pull request has the maximum number of approval rules associated with it.
_NumberOfRulesExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_NumberOfRulesExceededException =
  _MatchServiceError
    codeCommit
    "NumberOfRulesExceededException"

-- | The specified deletion parameter is not valid.
_InvalidDeletionParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeletionParameterException =
  _MatchServiceError
    codeCommit
    "InvalidDeletionParameterException"

-- | The Amazon Resource Name (ARN) of the user or identity is not valid.
_InvalidReactionUserARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidReactionUserARNException =
  _MatchServiceError
    codeCommit
    "InvalidReactionUserArnException"

-- | The specified branch is the default branch for the repository, and cannot be deleted. To delete this branch, you must first set another branch as the default branch.
_DefaultBranchCannotBeDeletedException :: AsError a => Getting (First ServiceError) a ServiceError
_DefaultBranchCannotBeDeletedException =
  _MatchServiceError
    codeCommit
    "DefaultBranchCannotBeDeletedException"

-- | The specified branch name is not valid because it is a tag name. Enter the name of a branch in the repository. For a list of valid branch names, use 'ListBranches' .
_BranchNameIsTagNameException :: AsError a => Getting (First ServiceError) a ServiceError
_BranchNameIsTagNameException =
  _MatchServiceError
    codeCommit
    "BranchNameIsTagNameException"

-- | The folderPath for a location cannot be null.
_PathRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_PathRequiredException =
  _MatchServiceError
    codeCommit
    "PathRequiredException"

-- | The commit cannot be created because a specified file path points to a submodule. Verify that the destination files have valid file paths that do not point to a submodule.
_FilePathConflictsWithSubmodulePathException :: AsError a => Getting (First ServiceError) a ServiceError
_FilePathConflictsWithSubmodulePathException =
  _MatchServiceError
    codeCommit
    "FilePathConflictsWithSubmodulePathException"

-- | The specified branch does not exist.
_BranchDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_BranchDoesNotExistException =
  _MatchServiceError
    codeCommit
    "BranchDoesNotExistException"

-- | The comment ID is not in a valid format. Make sure that you have provided the full comment ID.
_InvalidCommentIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCommentIdException =
  _MatchServiceError
    codeCommit
    "InvalidCommentIdException"

-- | The specified number of maximum results is not valid.
_InvalidMaxResultsException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidMaxResultsException =
  _MatchServiceError
    codeCommit
    "InvalidMaxResultsException"

-- | The revision ID is not valid. Use GetPullRequest to determine the value.
_InvalidRevisionIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRevisionIdException =
  _MatchServiceError
    codeCommit
    "InvalidRevisionIdException"

-- | The approval cannot be applied because the user approving the pull request matches the user who created the pull request. You cannot approve a pull request that you created.
_PullRequestCannotBeApprovedByAuthorException :: AsError a => Getting (First ServiceError) a ServiceError
_PullRequestCannotBeApprovedByAuthorException =
  _MatchServiceError
    codeCommit
    "PullRequestCannotBeApprovedByAuthorException"

-- | An approval rule name is required, but was not specified.
_ApprovalRuleNameRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ApprovalRuleNameRequiredException =
  _MatchServiceError
    codeCommit
    "ApprovalRuleNameRequiredException"

-- | A blob ID is required, but was not specified.
_BlobIdRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_BlobIdRequiredException =
  _MatchServiceError
    codeCommit
    "BlobIdRequiredException"

-- | The name of the approval rule template is not valid. Template names must be between 1 and 100 valid characters in length. For more information about limits in AWS CodeCommit, see <https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html AWS CodeCommit User Guide> .
_InvalidApprovalRuleTemplateNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidApprovalRuleTemplateNameException =
  _MatchServiceError
    codeCommit
    "InvalidApprovalRuleTemplateNameException"

-- | The pull request description is not valid. Descriptions cannot be more than 1,000 characters.
_InvalidDescriptionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDescriptionException =
  _MatchServiceError
    codeCommit
    "InvalidDescriptionException"

-- | The commit cannot be created because no changes will be made to the repository as a result of this commit. A commit must contain at least one change.
_NoChangeException :: AsError a => Getting (First ServiceError) a ServiceError
_NoChangeException =
  _MatchServiceError codeCommit "NoChangeException"

-- | The comment ID is missing or null. A comment ID is required.
_CommentIdRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_CommentIdRequiredException =
  _MatchServiceError
    codeCommit
    "CommentIdRequiredException"

-- | You cannot include more than one repository in a pull request. Make sure you have specified only one repository name in your request, and then try again.
_MultipleRepositoriesInPullRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_MultipleRepositoriesInPullRequestException =
  _MatchServiceError
    codeCommit
    "MultipleRepositoriesInPullRequestException"

-- | The specified sort order is not valid.
_InvalidOrderException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOrderException =
  _MatchServiceError
    codeCommit
    "InvalidOrderException"

-- | A client request token is required. A client request token is an unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
_ClientRequestTokenRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_ClientRequestTokenRequiredException =
  _MatchServiceError
    codeCommit
    "ClientRequestTokenRequiredException"

-- | The specified merge option is not valid for this operation. Not all merge strategies are supported for all operations.
_InvalidMergeOptionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidMergeOptionException =
  _MatchServiceError
    codeCommit
    "InvalidMergeOptionException"

-- | A merge option or stategy is required, and none was provided.
_MergeOptionRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_MergeOptionRequiredException =
  _MatchServiceError
    codeCommit
    "MergeOptionRequiredException"

-- | The specified reference name is not valid.
_InvalidBranchNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidBranchNameException =
  _MatchServiceError
    codeCommit
    "InvalidBranchNameException"

-- | The location of the file is not valid. Make sure that you include the file name and extension.
_InvalidFileLocationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFileLocationException =
  _MatchServiceError
    codeCommit
    "InvalidFileLocationException"

-- | The specified approval rule template does not exist. Verify that the name is correct and that you are signed in to the AWS Region where the template was created, and then try again.
_ApprovalRuleTemplateDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_ApprovalRuleTemplateDoesNotExistException =
  _MatchServiceError
    codeCommit
    "ApprovalRuleTemplateDoesNotExistException"

-- | The number of triggers allowed for the repository was exceeded.
_MaximumRepositoryTriggersExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaximumRepositoryTriggersExceededException =
  _MatchServiceError
    codeCommit
    "MaximumRepositoryTriggersExceededException"

-- | The specified commit does not exist or no commit was specified, and the specified repository has no default branch.
_CommitDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_CommitDoesNotExistException =
  _MatchServiceError
    codeCommit
    "CommitDoesNotExistException"

-- | The before commit ID and the after commit ID are the same, which is not valid. The before commit ID and the after commit ID must be different commit IDs.
_BeforeCommitIdAndAfterCommitIdAreSameException :: AsError a => Getting (First ServiceError) a ServiceError
_BeforeCommitIdAndAfterCommitIdAreSameException =
  _MatchServiceError
    codeCommit
    "BeforeCommitIdAndAfterCommitIdAreSameException"

-- | The specified repository name already exists.
_RepositoryNameExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryNameExistsException =
  _MatchServiceError
    codeCommit
    "RepositoryNameExistsException"

-- | The specified commit ID is not valid.
_InvalidCommitIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCommitIdException =
  _MatchServiceError
    codeCommit
    "InvalidCommitIdException"

-- | The specified repository description is not valid.
_InvalidRepositoryDescriptionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRepositoryDescriptionException =
  _MatchServiceError
    codeCommit
    "InvalidRepositoryDescriptionException"

-- | The maximum number of allowed repository names was exceeded. Currently, this number is 100.
_MaximumRepositoryNamesExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaximumRepositoryNamesExceededException =
  _MatchServiceError
    codeCommit
    "MaximumRepositoryNamesExceededException"

-- | The file was not added or updated because the content of the file is exactly the same as the content of that file in the repository and branch that you specified.
_SameFileContentException :: AsError a => Getting (First ServiceError) a ServiceError
_SameFileContentException =
  _MatchServiceError
    codeCommit
    "SameFileContentException"

-- | The approval rule template is associated with one or more repositories. You cannot delete a template that is associated with a repository. Remove all associations, and then try again.
_ApprovalRuleTemplateInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ApprovalRuleTemplateInUseException =
  _MatchServiceError
    codeCommit
    "ApprovalRuleTemplateInUseException"

-- | The specified email address either contains one or more characters that are not allowed, or it exceeds the maximum number of characters allowed for an email address.
_InvalidEmailException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidEmailException =
  _MatchServiceError
    codeCommit
    "InvalidEmailException"

-- | The tip of the source branch in the destination repository does not match the tip of the source branch specified in your request. The pull request might have been updated. Make sure that you have the latest changes.
_TipOfSourceReferenceIsDifferentException :: AsError a => Getting (First ServiceError) a ServiceError
_TipOfSourceReferenceIsDifferentException =
  _MatchServiceError
    codeCommit
    "TipOfSourceReferenceIsDifferentException"

-- | The specified folder does not exist. Either the folder name is not correct, or you did not enter the full path to the folder.
_FolderDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_FolderDoesNotExistException =
  _MatchServiceError
    codeCommit
    "FolderDoesNotExistException"

-- | The SHA-256 hash signature for the rule content is not valid.
_InvalidRuleContentSha256Exception :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRuleContentSha256Exception =
  _MatchServiceError
    codeCommit
    "InvalidRuleContentSha256Exception"

-- | The specified blob does not exist.
_BlobIdDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_BlobIdDoesNotExistException =
  _MatchServiceError
    codeCommit
    "BlobIdDoesNotExistException"

-- | The commit cannot be created because one or more files specified in the commit reference both a file and a folder.
_PutFileEntryConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_PutFileEntryConflictException =
  _MatchServiceError
    codeCommit
    "PutFileEntryConflictException"

-- | The commit cannot be created because both a source file and file content have been specified for the same file. You cannot provide both. Either specify a source file or provide the file content directly.
_FileContentAndSourceFileSpecifiedException :: AsError a => Getting (First ServiceError) a ServiceError
_FileContentAndSourceFileSpecifiedException =
  _MatchServiceError
    codeCommit
    "FileContentAndSourceFileSpecifiedException"
