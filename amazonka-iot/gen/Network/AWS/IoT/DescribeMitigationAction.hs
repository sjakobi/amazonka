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
-- Module      : Network.AWS.IoT.DescribeMitigationAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a mitigation action.
module Network.AWS.IoT.DescribeMitigationAction
  ( -- * Creating a Request
    describeMitigationAction,
    DescribeMitigationAction,

    -- * Request Lenses
    dActionName,

    -- * Destructuring the Response
    describeMitigationActionResponse,
    DescribeMitigationActionResponse,

    -- * Response Lenses
    desrsLastModifiedDate,
    desrsActionName,
    desrsRoleARN,
    desrsActionType,
    desrsActionARN,
    desrsActionId,
    desrsCreationDate,
    desrsActionParams,
    desrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeMitigationAction' smart constructor.
newtype DescribeMitigationAction = DescribeMitigationAction'
  { _dActionName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMitigationAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dActionName' - The friendly name that uniquely identifies the mitigation action.
describeMitigationAction ::
  -- | 'dActionName'
  Text ->
  DescribeMitigationAction
describeMitigationAction pActionName_ =
  DescribeMitigationAction'
    { _dActionName =
        pActionName_
    }

-- | The friendly name that uniquely identifies the mitigation action.
dActionName :: Lens' DescribeMitigationAction Text
dActionName = lens _dActionName (\s a -> s {_dActionName = a})

instance AWSRequest DescribeMitigationAction where
  type
    Rs DescribeMitigationAction =
      DescribeMitigationActionResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeMitigationActionResponse'
            <$> (x .?> "lastModifiedDate")
            <*> (x .?> "actionName")
            <*> (x .?> "roleArn")
            <*> (x .?> "actionType")
            <*> (x .?> "actionArn")
            <*> (x .?> "actionId")
            <*> (x .?> "creationDate")
            <*> (x .?> "actionParams")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMitigationAction

instance NFData DescribeMitigationAction

instance ToHeaders DescribeMitigationAction where
  toHeaders = const mempty

instance ToPath DescribeMitigationAction where
  toPath DescribeMitigationAction' {..} =
    mconcat
      ["/mitigationactions/actions/", toBS _dActionName]

instance ToQuery DescribeMitigationAction where
  toQuery = const mempty

-- | /See:/ 'describeMitigationActionResponse' smart constructor.
data DescribeMitigationActionResponse = DescribeMitigationActionResponse'
  { _desrsLastModifiedDate ::
      !( Maybe
           POSIX
       ),
    _desrsActionName ::
      !( Maybe
           Text
       ),
    _desrsRoleARN ::
      !( Maybe
           Text
       ),
    _desrsActionType ::
      !( Maybe
           MitigationActionType
       ),
    _desrsActionARN ::
      !( Maybe
           Text
       ),
    _desrsActionId ::
      !( Maybe
           Text
       ),
    _desrsCreationDate ::
      !( Maybe
           POSIX
       ),
    _desrsActionParams ::
      !( Maybe
           MitigationActionParams
       ),
    _desrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMitigationActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsLastModifiedDate' - The date and time when the mitigation action was last changed.
--
-- * 'desrsActionName' - The friendly name that uniquely identifies the mitigation action.
--
-- * 'desrsRoleARN' - The ARN of the IAM role used to apply this action.
--
-- * 'desrsActionType' - The type of mitigation action.
--
-- * 'desrsActionARN' - The ARN that identifies this migration action.
--
-- * 'desrsActionId' - A unique identifier for this action.
--
-- * 'desrsCreationDate' - The date and time when the mitigation action was added to your AWS account.
--
-- * 'desrsActionParams' - Parameters that control how the mitigation action is applied, specific to the type of mitigation action.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeMitigationActionResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeMitigationActionResponse
describeMitigationActionResponse pResponseStatus_ =
  DescribeMitigationActionResponse'
    { _desrsLastModifiedDate =
        Nothing,
      _desrsActionName = Nothing,
      _desrsRoleARN = Nothing,
      _desrsActionType = Nothing,
      _desrsActionARN = Nothing,
      _desrsActionId = Nothing,
      _desrsCreationDate = Nothing,
      _desrsActionParams = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The date and time when the mitigation action was last changed.
desrsLastModifiedDate :: Lens' DescribeMitigationActionResponse (Maybe UTCTime)
desrsLastModifiedDate = lens _desrsLastModifiedDate (\s a -> s {_desrsLastModifiedDate = a}) . mapping _Time

-- | The friendly name that uniquely identifies the mitigation action.
desrsActionName :: Lens' DescribeMitigationActionResponse (Maybe Text)
desrsActionName = lens _desrsActionName (\s a -> s {_desrsActionName = a})

-- | The ARN of the IAM role used to apply this action.
desrsRoleARN :: Lens' DescribeMitigationActionResponse (Maybe Text)
desrsRoleARN = lens _desrsRoleARN (\s a -> s {_desrsRoleARN = a})

-- | The type of mitigation action.
desrsActionType :: Lens' DescribeMitigationActionResponse (Maybe MitigationActionType)
desrsActionType = lens _desrsActionType (\s a -> s {_desrsActionType = a})

-- | The ARN that identifies this migration action.
desrsActionARN :: Lens' DescribeMitigationActionResponse (Maybe Text)
desrsActionARN = lens _desrsActionARN (\s a -> s {_desrsActionARN = a})

-- | A unique identifier for this action.
desrsActionId :: Lens' DescribeMitigationActionResponse (Maybe Text)
desrsActionId = lens _desrsActionId (\s a -> s {_desrsActionId = a})

-- | The date and time when the mitigation action was added to your AWS account.
desrsCreationDate :: Lens' DescribeMitigationActionResponse (Maybe UTCTime)
desrsCreationDate = lens _desrsCreationDate (\s a -> s {_desrsCreationDate = a}) . mapping _Time

-- | Parameters that control how the mitigation action is applied, specific to the type of mitigation action.
desrsActionParams :: Lens' DescribeMitigationActionResponse (Maybe MitigationActionParams)
desrsActionParams = lens _desrsActionParams (\s a -> s {_desrsActionParams = a})

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeMitigationActionResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeMitigationActionResponse
