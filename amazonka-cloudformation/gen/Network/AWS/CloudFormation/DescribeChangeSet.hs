{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.DescribeChangeSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the inputs for the change set and a list of changes that AWS CloudFormation will make if you execute the change set. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html Updating Stacks Using Change Sets> in the AWS CloudFormation User Guide.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.DescribeChangeSet
  ( -- * Creating a Request
    describeChangeSet,
    DescribeChangeSet,

    -- * Request Lenses
    dcsNextToken,
    dcsStackName,
    dcsChangeSetName,

    -- * Destructuring the Response
    describeChangeSetResponse,
    DescribeChangeSetResponse,

    -- * Response Lenses
    desrsRootChangeSetId,
    desrsNextToken,
    desrsCreationTime,
    desrsIncludeNestedStacks,
    desrsStackName,
    desrsCapabilities,
    desrsExecutionStatus,
    desrsStackId,
    desrsNotificationARNs,
    desrsChanges,
    desrsParentChangeSetId,
    desrsTags,
    desrsChangeSetId,
    desrsRollbackConfiguration,
    desrsDescription,
    desrsChangeSetName,
    desrsStatusReason,
    desrsParameters,
    desrsResponseStatus,
    desrsStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the 'DescribeChangeSet' action.
--
--
--
-- /See:/ 'describeChangeSet' smart constructor.
data DescribeChangeSet = DescribeChangeSet'
  { _dcsNextToken ::
      !(Maybe Text),
    _dcsStackName :: !(Maybe Text),
    _dcsChangeSetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeChangeSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsNextToken' - A string (provided by the 'DescribeChangeSet' response output) that identifies the next page of information that you want to retrieve.
--
-- * 'dcsStackName' - If you specified the name of a change set, specify the stack name or ID (ARN) of the change set you want to describe.
--
-- * 'dcsChangeSetName' - The name or Amazon Resource Name (ARN) of the change set that you want to describe.
describeChangeSet ::
  -- | 'dcsChangeSetName'
  Text ->
  DescribeChangeSet
describeChangeSet pChangeSetName_ =
  DescribeChangeSet'
    { _dcsNextToken = Nothing,
      _dcsStackName = Nothing,
      _dcsChangeSetName = pChangeSetName_
    }

-- | A string (provided by the 'DescribeChangeSet' response output) that identifies the next page of information that you want to retrieve.
dcsNextToken :: Lens' DescribeChangeSet (Maybe Text)
dcsNextToken = lens _dcsNextToken (\s a -> s {_dcsNextToken = a})

-- | If you specified the name of a change set, specify the stack name or ID (ARN) of the change set you want to describe.
dcsStackName :: Lens' DescribeChangeSet (Maybe Text)
dcsStackName = lens _dcsStackName (\s a -> s {_dcsStackName = a})

-- | The name or Amazon Resource Name (ARN) of the change set that you want to describe.
dcsChangeSetName :: Lens' DescribeChangeSet Text
dcsChangeSetName = lens _dcsChangeSetName (\s a -> s {_dcsChangeSetName = a})

instance AWSPager DescribeChangeSet where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsChanges) = Nothing
    | otherwise =
      Just $ rq & dcsNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeChangeSet where
  type Rs DescribeChangeSet = DescribeChangeSetResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DescribeChangeSetResult"
      ( \s h x ->
          DescribeChangeSetResponse'
            <$> (x .@? "RootChangeSetId")
            <*> (x .@? "NextToken")
            <*> (x .@? "CreationTime")
            <*> (x .@? "IncludeNestedStacks")
            <*> (x .@? "StackName")
            <*> ( x .@? "Capabilities" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "ExecutionStatus")
            <*> (x .@? "StackId")
            <*> ( x .@? "NotificationARNs" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> ( x .@? "Changes" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "ParentChangeSetId")
            <*> ( x .@? "Tags" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "ChangeSetId")
            <*> (x .@? "RollbackConfiguration")
            <*> (x .@? "Description")
            <*> (x .@? "ChangeSetName")
            <*> (x .@? "StatusReason")
            <*> ( x .@? "Parameters" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
            <*> (x .@ "Status")
      )

instance Hashable DescribeChangeSet

instance NFData DescribeChangeSet

instance ToHeaders DescribeChangeSet where
  toHeaders = const mempty

instance ToPath DescribeChangeSet where
  toPath = const "/"

instance ToQuery DescribeChangeSet where
  toQuery DescribeChangeSet' {..} =
    mconcat
      [ "Action" =: ("DescribeChangeSet" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "NextToken" =: _dcsNextToken,
        "StackName" =: _dcsStackName,
        "ChangeSetName" =: _dcsChangeSetName
      ]

-- | The output for the 'DescribeChangeSet' action.
--
--
--
-- /See:/ 'describeChangeSetResponse' smart constructor.
data DescribeChangeSetResponse = DescribeChangeSetResponse'
  { _desrsRootChangeSetId ::
      !(Maybe Text),
    _desrsNextToken ::
      !(Maybe Text),
    _desrsCreationTime ::
      !(Maybe ISO8601),
    _desrsIncludeNestedStacks ::
      !(Maybe Bool),
    _desrsStackName ::
      !(Maybe Text),
    _desrsCapabilities ::
      !( Maybe
           [Capability]
       ),
    _desrsExecutionStatus ::
      !( Maybe
           ExecutionStatus
       ),
    _desrsStackId ::
      !(Maybe Text),
    _desrsNotificationARNs ::
      !(Maybe [Text]),
    _desrsChanges ::
      !(Maybe [Change]),
    _desrsParentChangeSetId ::
      !(Maybe Text),
    _desrsTags ::
      !(Maybe [Tag]),
    _desrsChangeSetId ::
      !(Maybe Text),
    _desrsRollbackConfiguration ::
      !( Maybe
           RollbackConfiguration
       ),
    _desrsDescription ::
      !(Maybe Text),
    _desrsChangeSetName ::
      !(Maybe Text),
    _desrsStatusReason ::
      !(Maybe Text),
    _desrsParameters ::
      !( Maybe
           [Parameter]
       ),
    _desrsResponseStatus ::
      !Int,
    _desrsStatus ::
      !ChangeSetStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeChangeSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsRootChangeSetId' - Specifies the change set ID of the root change set in the current nested change set hierarchy.
--
-- * 'desrsNextToken' - If the output exceeds 1 MB, a string that identifies the next page of changes. If there is no additional page, this value is null.
--
-- * 'desrsCreationTime' - The start time when the change set was created, in UTC.
--
-- * 'desrsIncludeNestedStacks' - Verifies if @IncludeNestedStacks@ is set to @True@ .
--
-- * 'desrsStackName' - The name of the stack that is associated with the change set.
--
-- * 'desrsCapabilities' - If you execute the change set, the list of capabilities that were explicitly acknowledged when the change set was created.
--
-- * 'desrsExecutionStatus' - If the change set execution status is @AVAILABLE@ , you can execute the change set. If you can’t execute the change set, the status indicates why. For example, a change set might be in an @UNAVAILABLE@ state because AWS CloudFormation is still creating it or in an @OBSOLETE@ state because the stack was already updated.
--
-- * 'desrsStackId' - The ARN of the stack that is associated with the change set.
--
-- * 'desrsNotificationARNs' - The ARNs of the Amazon Simple Notification Service (Amazon SNS) topics that will be associated with the stack if you execute the change set.
--
-- * 'desrsChanges' - A list of @Change@ structures that describes the resources AWS CloudFormation changes if you execute the change set.
--
-- * 'desrsParentChangeSetId' - Specifies the change set ID of the parent change set in the current nested change set hierarchy.
--
-- * 'desrsTags' - If you execute the change set, the tags that will be associated with the stack.
--
-- * 'desrsChangeSetId' - The ARN of the change set.
--
-- * 'desrsRollbackConfiguration' - The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
--
-- * 'desrsDescription' - Information about the change set.
--
-- * 'desrsChangeSetName' - The name of the change set.
--
-- * 'desrsStatusReason' - A description of the change set's status. For example, if your attempt to create a change set failed, AWS CloudFormation shows the error message.
--
-- * 'desrsParameters' - A list of @Parameter@ structures that describes the input parameters and their values used to create the change set. For more information, see the <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html Parameter> data type.
--
-- * 'desrsResponseStatus' - -- | The response status code.
--
-- * 'desrsStatus' - The current status of the change set, such as @CREATE_IN_PROGRESS@ , @CREATE_COMPLETE@ , or @FAILED@ .
describeChangeSetResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  -- | 'desrsStatus'
  ChangeSetStatus ->
  DescribeChangeSetResponse
describeChangeSetResponse pResponseStatus_ pStatus_ =
  DescribeChangeSetResponse'
    { _desrsRootChangeSetId =
        Nothing,
      _desrsNextToken = Nothing,
      _desrsCreationTime = Nothing,
      _desrsIncludeNestedStacks = Nothing,
      _desrsStackName = Nothing,
      _desrsCapabilities = Nothing,
      _desrsExecutionStatus = Nothing,
      _desrsStackId = Nothing,
      _desrsNotificationARNs = Nothing,
      _desrsChanges = Nothing,
      _desrsParentChangeSetId = Nothing,
      _desrsTags = Nothing,
      _desrsChangeSetId = Nothing,
      _desrsRollbackConfiguration = Nothing,
      _desrsDescription = Nothing,
      _desrsChangeSetName = Nothing,
      _desrsStatusReason = Nothing,
      _desrsParameters = Nothing,
      _desrsResponseStatus = pResponseStatus_,
      _desrsStatus = pStatus_
    }

-- | Specifies the change set ID of the root change set in the current nested change set hierarchy.
desrsRootChangeSetId :: Lens' DescribeChangeSetResponse (Maybe Text)
desrsRootChangeSetId = lens _desrsRootChangeSetId (\s a -> s {_desrsRootChangeSetId = a})

-- | If the output exceeds 1 MB, a string that identifies the next page of changes. If there is no additional page, this value is null.
desrsNextToken :: Lens' DescribeChangeSetResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | The start time when the change set was created, in UTC.
desrsCreationTime :: Lens' DescribeChangeSetResponse (Maybe UTCTime)
desrsCreationTime = lens _desrsCreationTime (\s a -> s {_desrsCreationTime = a}) . mapping _Time

-- | Verifies if @IncludeNestedStacks@ is set to @True@ .
desrsIncludeNestedStacks :: Lens' DescribeChangeSetResponse (Maybe Bool)
desrsIncludeNestedStacks = lens _desrsIncludeNestedStacks (\s a -> s {_desrsIncludeNestedStacks = a})

-- | The name of the stack that is associated with the change set.
desrsStackName :: Lens' DescribeChangeSetResponse (Maybe Text)
desrsStackName = lens _desrsStackName (\s a -> s {_desrsStackName = a})

-- | If you execute the change set, the list of capabilities that were explicitly acknowledged when the change set was created.
desrsCapabilities :: Lens' DescribeChangeSetResponse [Capability]
desrsCapabilities = lens _desrsCapabilities (\s a -> s {_desrsCapabilities = a}) . _Default . _Coerce

-- | If the change set execution status is @AVAILABLE@ , you can execute the change set. If you can’t execute the change set, the status indicates why. For example, a change set might be in an @UNAVAILABLE@ state because AWS CloudFormation is still creating it or in an @OBSOLETE@ state because the stack was already updated.
desrsExecutionStatus :: Lens' DescribeChangeSetResponse (Maybe ExecutionStatus)
desrsExecutionStatus = lens _desrsExecutionStatus (\s a -> s {_desrsExecutionStatus = a})

-- | The ARN of the stack that is associated with the change set.
desrsStackId :: Lens' DescribeChangeSetResponse (Maybe Text)
desrsStackId = lens _desrsStackId (\s a -> s {_desrsStackId = a})

-- | The ARNs of the Amazon Simple Notification Service (Amazon SNS) topics that will be associated with the stack if you execute the change set.
desrsNotificationARNs :: Lens' DescribeChangeSetResponse [Text]
desrsNotificationARNs = lens _desrsNotificationARNs (\s a -> s {_desrsNotificationARNs = a}) . _Default . _Coerce

-- | A list of @Change@ structures that describes the resources AWS CloudFormation changes if you execute the change set.
desrsChanges :: Lens' DescribeChangeSetResponse [Change]
desrsChanges = lens _desrsChanges (\s a -> s {_desrsChanges = a}) . _Default . _Coerce

-- | Specifies the change set ID of the parent change set in the current nested change set hierarchy.
desrsParentChangeSetId :: Lens' DescribeChangeSetResponse (Maybe Text)
desrsParentChangeSetId = lens _desrsParentChangeSetId (\s a -> s {_desrsParentChangeSetId = a})

-- | If you execute the change set, the tags that will be associated with the stack.
desrsTags :: Lens' DescribeChangeSetResponse [Tag]
desrsTags = lens _desrsTags (\s a -> s {_desrsTags = a}) . _Default . _Coerce

-- | The ARN of the change set.
desrsChangeSetId :: Lens' DescribeChangeSetResponse (Maybe Text)
desrsChangeSetId = lens _desrsChangeSetId (\s a -> s {_desrsChangeSetId = a})

-- | The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
desrsRollbackConfiguration :: Lens' DescribeChangeSetResponse (Maybe RollbackConfiguration)
desrsRollbackConfiguration = lens _desrsRollbackConfiguration (\s a -> s {_desrsRollbackConfiguration = a})

-- | Information about the change set.
desrsDescription :: Lens' DescribeChangeSetResponse (Maybe Text)
desrsDescription = lens _desrsDescription (\s a -> s {_desrsDescription = a})

-- | The name of the change set.
desrsChangeSetName :: Lens' DescribeChangeSetResponse (Maybe Text)
desrsChangeSetName = lens _desrsChangeSetName (\s a -> s {_desrsChangeSetName = a})

-- | A description of the change set's status. For example, if your attempt to create a change set failed, AWS CloudFormation shows the error message.
desrsStatusReason :: Lens' DescribeChangeSetResponse (Maybe Text)
desrsStatusReason = lens _desrsStatusReason (\s a -> s {_desrsStatusReason = a})

-- | A list of @Parameter@ structures that describes the input parameters and their values used to create the change set. For more information, see the <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html Parameter> data type.
desrsParameters :: Lens' DescribeChangeSetResponse [Parameter]
desrsParameters = lens _desrsParameters (\s a -> s {_desrsParameters = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeChangeSetResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

-- | The current status of the change set, such as @CREATE_IN_PROGRESS@ , @CREATE_COMPLETE@ , or @FAILED@ .
desrsStatus :: Lens' DescribeChangeSetResponse ChangeSetStatus
desrsStatus = lens _desrsStatus (\s a -> s {_desrsStatus = a})

instance NFData DescribeChangeSetResponse
