{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ChangeSetSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ChangeSetSummary where

import Network.AWS.CloudFormation.Types.ChangeSetStatus
import Network.AWS.CloudFormation.Types.ExecutionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The @ChangeSetSummary@ structure describes a change set, its status, and the stack with which it's associated.
--
--
--
-- /See:/ 'changeSetSummary' smart constructor.
data ChangeSetSummary = ChangeSetSummary'
  { _cssRootChangeSetId ::
      !(Maybe Text),
    _cssStatus ::
      !(Maybe ChangeSetStatus),
    _cssCreationTime :: !(Maybe ISO8601),
    _cssIncludeNestedStacks ::
      !(Maybe Bool),
    _cssStackName :: !(Maybe Text),
    _cssExecutionStatus ::
      !(Maybe ExecutionStatus),
    _cssStackId :: !(Maybe Text),
    _cssParentChangeSetId ::
      !(Maybe Text),
    _cssChangeSetId :: !(Maybe Text),
    _cssDescription :: !(Maybe Text),
    _cssChangeSetName :: !(Maybe Text),
    _cssStatusReason :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ChangeSetSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cssRootChangeSetId' - The root change set ID.
--
-- * 'cssStatus' - The state of the change set, such as @CREATE_IN_PROGRESS@ , @CREATE_COMPLETE@ , or @FAILED@ .
--
-- * 'cssCreationTime' - The start time when the change set was created, in UTC.
--
-- * 'cssIncludeNestedStacks' - Specifies the current setting of @IncludeNestedStacks@ for the change set.
--
-- * 'cssStackName' - The name of the stack with which the change set is associated.
--
-- * 'cssExecutionStatus' - If the change set execution status is @AVAILABLE@ , you can execute the change set. If you can’t execute the change set, the status indicates why. For example, a change set might be in an @UNAVAILABLE@ state because AWS CloudFormation is still creating it or in an @OBSOLETE@ state because the stack was already updated.
--
-- * 'cssStackId' - The ID of the stack with which the change set is associated.
--
-- * 'cssParentChangeSetId' - The parent change set ID.
--
-- * 'cssChangeSetId' - The ID of the change set.
--
-- * 'cssDescription' - Descriptive information about the change set.
--
-- * 'cssChangeSetName' - The name of the change set.
--
-- * 'cssStatusReason' - A description of the change set's status. For example, if your change set is in the @FAILED@ state, AWS CloudFormation shows the error message.
changeSetSummary ::
  ChangeSetSummary
changeSetSummary =
  ChangeSetSummary'
    { _cssRootChangeSetId = Nothing,
      _cssStatus = Nothing,
      _cssCreationTime = Nothing,
      _cssIncludeNestedStacks = Nothing,
      _cssStackName = Nothing,
      _cssExecutionStatus = Nothing,
      _cssStackId = Nothing,
      _cssParentChangeSetId = Nothing,
      _cssChangeSetId = Nothing,
      _cssDescription = Nothing,
      _cssChangeSetName = Nothing,
      _cssStatusReason = Nothing
    }

-- | The root change set ID.
cssRootChangeSetId :: Lens' ChangeSetSummary (Maybe Text)
cssRootChangeSetId = lens _cssRootChangeSetId (\s a -> s {_cssRootChangeSetId = a})

-- | The state of the change set, such as @CREATE_IN_PROGRESS@ , @CREATE_COMPLETE@ , or @FAILED@ .
cssStatus :: Lens' ChangeSetSummary (Maybe ChangeSetStatus)
cssStatus = lens _cssStatus (\s a -> s {_cssStatus = a})

-- | The start time when the change set was created, in UTC.
cssCreationTime :: Lens' ChangeSetSummary (Maybe UTCTime)
cssCreationTime = lens _cssCreationTime (\s a -> s {_cssCreationTime = a}) . mapping _Time

-- | Specifies the current setting of @IncludeNestedStacks@ for the change set.
cssIncludeNestedStacks :: Lens' ChangeSetSummary (Maybe Bool)
cssIncludeNestedStacks = lens _cssIncludeNestedStacks (\s a -> s {_cssIncludeNestedStacks = a})

-- | The name of the stack with which the change set is associated.
cssStackName :: Lens' ChangeSetSummary (Maybe Text)
cssStackName = lens _cssStackName (\s a -> s {_cssStackName = a})

-- | If the change set execution status is @AVAILABLE@ , you can execute the change set. If you can’t execute the change set, the status indicates why. For example, a change set might be in an @UNAVAILABLE@ state because AWS CloudFormation is still creating it or in an @OBSOLETE@ state because the stack was already updated.
cssExecutionStatus :: Lens' ChangeSetSummary (Maybe ExecutionStatus)
cssExecutionStatus = lens _cssExecutionStatus (\s a -> s {_cssExecutionStatus = a})

-- | The ID of the stack with which the change set is associated.
cssStackId :: Lens' ChangeSetSummary (Maybe Text)
cssStackId = lens _cssStackId (\s a -> s {_cssStackId = a})

-- | The parent change set ID.
cssParentChangeSetId :: Lens' ChangeSetSummary (Maybe Text)
cssParentChangeSetId = lens _cssParentChangeSetId (\s a -> s {_cssParentChangeSetId = a})

-- | The ID of the change set.
cssChangeSetId :: Lens' ChangeSetSummary (Maybe Text)
cssChangeSetId = lens _cssChangeSetId (\s a -> s {_cssChangeSetId = a})

-- | Descriptive information about the change set.
cssDescription :: Lens' ChangeSetSummary (Maybe Text)
cssDescription = lens _cssDescription (\s a -> s {_cssDescription = a})

-- | The name of the change set.
cssChangeSetName :: Lens' ChangeSetSummary (Maybe Text)
cssChangeSetName = lens _cssChangeSetName (\s a -> s {_cssChangeSetName = a})

-- | A description of the change set's status. For example, if your change set is in the @FAILED@ state, AWS CloudFormation shows the error message.
cssStatusReason :: Lens' ChangeSetSummary (Maybe Text)
cssStatusReason = lens _cssStatusReason (\s a -> s {_cssStatusReason = a})

instance FromXML ChangeSetSummary where
  parseXML x =
    ChangeSetSummary'
      <$> (x .@? "RootChangeSetId")
      <*> (x .@? "Status")
      <*> (x .@? "CreationTime")
      <*> (x .@? "IncludeNestedStacks")
      <*> (x .@? "StackName")
      <*> (x .@? "ExecutionStatus")
      <*> (x .@? "StackId")
      <*> (x .@? "ParentChangeSetId")
      <*> (x .@? "ChangeSetId")
      <*> (x .@? "Description")
      <*> (x .@? "ChangeSetName")
      <*> (x .@? "StatusReason")

instance Hashable ChangeSetSummary

instance NFData ChangeSetSummary
