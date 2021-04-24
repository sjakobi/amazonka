{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.HIT
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.HIT where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types.HITReviewStatus
import Network.AWS.MechanicalTurk.Types.HITStatus
import Network.AWS.MechanicalTurk.Types.QualificationRequirement
import Network.AWS.Prelude

-- | The HIT data structure represents a single HIT, including all the information necessary for a Worker to accept and complete the HIT.
--
--
--
-- /See:/ 'hIT' smart constructor.
data HIT = HIT'
  { _hitHITGroupId :: !(Maybe Text),
    _hitCreationTime :: !(Maybe POSIX),
    _hitAssignmentDurationInSeconds :: !(Maybe Integer),
    _hitAutoApprovalDelayInSeconds :: !(Maybe Integer),
    _hitQuestion :: !(Maybe Text),
    _hitExpiration :: !(Maybe POSIX),
    _hitHITReviewStatus :: !(Maybe HITReviewStatus),
    _hitTitle :: !(Maybe Text),
    _hitHITId :: !(Maybe Text),
    _hitHITLayoutId :: !(Maybe Text),
    _hitNumberOfAssignmentsCompleted :: !(Maybe Int),
    _hitReward :: !(Maybe Text),
    _hitMaxAssignments :: !(Maybe Int),
    _hitHITStatus :: !(Maybe HITStatus),
    _hitRequesterAnnotation :: !(Maybe Text),
    _hitDescription :: !(Maybe Text),
    _hitNumberOfAssignmentsAvailable :: !(Maybe Int),
    _hitHITTypeId :: !(Maybe Text),
    _hitQualificationRequirements ::
      !(Maybe [QualificationRequirement]),
    _hitNumberOfAssignmentsPending :: !(Maybe Int),
    _hitKeywords :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HIT' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hitHITGroupId' - The ID of the HIT Group of this HIT.
--
-- * 'hitCreationTime' - The date and time the HIT was created.
--
-- * 'hitAssignmentDurationInSeconds' - The length of time, in seconds, that a Worker has to complete the HIT after accepting it.
--
-- * 'hitAutoApprovalDelayInSeconds' - The amount of time, in seconds, after the Worker submits an assignment for the HIT that the results are automatically approved by Amazon Mechanical Turk. This is the amount of time the Requester has to reject an assignment submitted by a Worker before the assignment is auto-approved and the Worker is paid.
--
-- * 'hitQuestion' - The data the Worker completing the HIT uses produce the results. This is either either a QuestionForm, HTMLQuestion or an ExternalQuestion data structure.
--
-- * 'hitExpiration' - The date and time the HIT expires.
--
-- * 'hitHITReviewStatus' - Indicates the review status of the HIT. Valid Values are NotReviewed | MarkedForReview | ReviewedAppropriate | ReviewedInappropriate.
--
-- * 'hitTitle' - The title of the HIT.
--
-- * 'hitHITId' - A unique identifier for the HIT.
--
-- * 'hitHITLayoutId' - The ID of the HIT Layout of this HIT.
--
-- * 'hitNumberOfAssignmentsCompleted' - The number of assignments for this HIT that have been approved or rejected.
--
-- * 'hitReward' - Undocumented member.
--
-- * 'hitMaxAssignments' - The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
--
-- * 'hitHITStatus' - The status of the HIT and its assignments. Valid Values are Assignable | Unassignable | Reviewable | Reviewing | Disposed.
--
-- * 'hitRequesterAnnotation' - An arbitrary data field the Requester who created the HIT can use. This field is visible only to the creator of the HIT.
--
-- * 'hitDescription' - A general description of the HIT.
--
-- * 'hitNumberOfAssignmentsAvailable' - The number of assignments for this HIT that are available for Workers to accept.
--
-- * 'hitHITTypeId' - The ID of the HIT type of this HIT
--
-- * 'hitQualificationRequirements' - Conditions that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met in order for a Worker to accept the HIT. Additionally, other actions can be restricted using the @ActionsGuarded@ field on each @QualificationRequirement@ structure.
--
-- * 'hitNumberOfAssignmentsPending' - The number of assignments for this HIT that are being previewed or have been accepted by Workers, but have not yet been submitted, returned, or abandoned.
--
-- * 'hitKeywords' - One or more words or phrases that describe the HIT, separated by commas. Search terms similar to the keywords of a HIT are more likely to have the HIT in the search results.
hIT ::
  HIT
hIT =
  HIT'
    { _hitHITGroupId = Nothing,
      _hitCreationTime = Nothing,
      _hitAssignmentDurationInSeconds = Nothing,
      _hitAutoApprovalDelayInSeconds = Nothing,
      _hitQuestion = Nothing,
      _hitExpiration = Nothing,
      _hitHITReviewStatus = Nothing,
      _hitTitle = Nothing,
      _hitHITId = Nothing,
      _hitHITLayoutId = Nothing,
      _hitNumberOfAssignmentsCompleted = Nothing,
      _hitReward = Nothing,
      _hitMaxAssignments = Nothing,
      _hitHITStatus = Nothing,
      _hitRequesterAnnotation = Nothing,
      _hitDescription = Nothing,
      _hitNumberOfAssignmentsAvailable = Nothing,
      _hitHITTypeId = Nothing,
      _hitQualificationRequirements = Nothing,
      _hitNumberOfAssignmentsPending = Nothing,
      _hitKeywords = Nothing
    }

-- | The ID of the HIT Group of this HIT.
hitHITGroupId :: Lens' HIT (Maybe Text)
hitHITGroupId = lens _hitHITGroupId (\s a -> s {_hitHITGroupId = a})

-- | The date and time the HIT was created.
hitCreationTime :: Lens' HIT (Maybe UTCTime)
hitCreationTime = lens _hitCreationTime (\s a -> s {_hitCreationTime = a}) . mapping _Time

-- | The length of time, in seconds, that a Worker has to complete the HIT after accepting it.
hitAssignmentDurationInSeconds :: Lens' HIT (Maybe Integer)
hitAssignmentDurationInSeconds = lens _hitAssignmentDurationInSeconds (\s a -> s {_hitAssignmentDurationInSeconds = a})

-- | The amount of time, in seconds, after the Worker submits an assignment for the HIT that the results are automatically approved by Amazon Mechanical Turk. This is the amount of time the Requester has to reject an assignment submitted by a Worker before the assignment is auto-approved and the Worker is paid.
hitAutoApprovalDelayInSeconds :: Lens' HIT (Maybe Integer)
hitAutoApprovalDelayInSeconds = lens _hitAutoApprovalDelayInSeconds (\s a -> s {_hitAutoApprovalDelayInSeconds = a})

-- | The data the Worker completing the HIT uses produce the results. This is either either a QuestionForm, HTMLQuestion or an ExternalQuestion data structure.
hitQuestion :: Lens' HIT (Maybe Text)
hitQuestion = lens _hitQuestion (\s a -> s {_hitQuestion = a})

-- | The date and time the HIT expires.
hitExpiration :: Lens' HIT (Maybe UTCTime)
hitExpiration = lens _hitExpiration (\s a -> s {_hitExpiration = a}) . mapping _Time

-- | Indicates the review status of the HIT. Valid Values are NotReviewed | MarkedForReview | ReviewedAppropriate | ReviewedInappropriate.
hitHITReviewStatus :: Lens' HIT (Maybe HITReviewStatus)
hitHITReviewStatus = lens _hitHITReviewStatus (\s a -> s {_hitHITReviewStatus = a})

-- | The title of the HIT.
hitTitle :: Lens' HIT (Maybe Text)
hitTitle = lens _hitTitle (\s a -> s {_hitTitle = a})

-- | A unique identifier for the HIT.
hitHITId :: Lens' HIT (Maybe Text)
hitHITId = lens _hitHITId (\s a -> s {_hitHITId = a})

-- | The ID of the HIT Layout of this HIT.
hitHITLayoutId :: Lens' HIT (Maybe Text)
hitHITLayoutId = lens _hitHITLayoutId (\s a -> s {_hitHITLayoutId = a})

-- | The number of assignments for this HIT that have been approved or rejected.
hitNumberOfAssignmentsCompleted :: Lens' HIT (Maybe Int)
hitNumberOfAssignmentsCompleted = lens _hitNumberOfAssignmentsCompleted (\s a -> s {_hitNumberOfAssignmentsCompleted = a})

-- | Undocumented member.
hitReward :: Lens' HIT (Maybe Text)
hitReward = lens _hitReward (\s a -> s {_hitReward = a})

-- | The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
hitMaxAssignments :: Lens' HIT (Maybe Int)
hitMaxAssignments = lens _hitMaxAssignments (\s a -> s {_hitMaxAssignments = a})

-- | The status of the HIT and its assignments. Valid Values are Assignable | Unassignable | Reviewable | Reviewing | Disposed.
hitHITStatus :: Lens' HIT (Maybe HITStatus)
hitHITStatus = lens _hitHITStatus (\s a -> s {_hitHITStatus = a})

-- | An arbitrary data field the Requester who created the HIT can use. This field is visible only to the creator of the HIT.
hitRequesterAnnotation :: Lens' HIT (Maybe Text)
hitRequesterAnnotation = lens _hitRequesterAnnotation (\s a -> s {_hitRequesterAnnotation = a})

-- | A general description of the HIT.
hitDescription :: Lens' HIT (Maybe Text)
hitDescription = lens _hitDescription (\s a -> s {_hitDescription = a})

-- | The number of assignments for this HIT that are available for Workers to accept.
hitNumberOfAssignmentsAvailable :: Lens' HIT (Maybe Int)
hitNumberOfAssignmentsAvailable = lens _hitNumberOfAssignmentsAvailable (\s a -> s {_hitNumberOfAssignmentsAvailable = a})

-- | The ID of the HIT type of this HIT
hitHITTypeId :: Lens' HIT (Maybe Text)
hitHITTypeId = lens _hitHITTypeId (\s a -> s {_hitHITTypeId = a})

-- | Conditions that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met in order for a Worker to accept the HIT. Additionally, other actions can be restricted using the @ActionsGuarded@ field on each @QualificationRequirement@ structure.
hitQualificationRequirements :: Lens' HIT [QualificationRequirement]
hitQualificationRequirements = lens _hitQualificationRequirements (\s a -> s {_hitQualificationRequirements = a}) . _Default . _Coerce

-- | The number of assignments for this HIT that are being previewed or have been accepted by Workers, but have not yet been submitted, returned, or abandoned.
hitNumberOfAssignmentsPending :: Lens' HIT (Maybe Int)
hitNumberOfAssignmentsPending = lens _hitNumberOfAssignmentsPending (\s a -> s {_hitNumberOfAssignmentsPending = a})

-- | One or more words or phrases that describe the HIT, separated by commas. Search terms similar to the keywords of a HIT are more likely to have the HIT in the search results.
hitKeywords :: Lens' HIT (Maybe Text)
hitKeywords = lens _hitKeywords (\s a -> s {_hitKeywords = a})

instance FromJSON HIT where
  parseJSON =
    withObject
      "HIT"
      ( \x ->
          HIT'
            <$> (x .:? "HITGroupId")
            <*> (x .:? "CreationTime")
            <*> (x .:? "AssignmentDurationInSeconds")
            <*> (x .:? "AutoApprovalDelayInSeconds")
            <*> (x .:? "Question")
            <*> (x .:? "Expiration")
            <*> (x .:? "HITReviewStatus")
            <*> (x .:? "Title")
            <*> (x .:? "HITId")
            <*> (x .:? "HITLayoutId")
            <*> (x .:? "NumberOfAssignmentsCompleted")
            <*> (x .:? "Reward")
            <*> (x .:? "MaxAssignments")
            <*> (x .:? "HITStatus")
            <*> (x .:? "RequesterAnnotation")
            <*> (x .:? "Description")
            <*> (x .:? "NumberOfAssignmentsAvailable")
            <*> (x .:? "HITTypeId")
            <*> (x .:? "QualificationRequirements" .!= mempty)
            <*> (x .:? "NumberOfAssignmentsPending")
            <*> (x .:? "Keywords")
      )

instance Hashable HIT

instance NFData HIT
