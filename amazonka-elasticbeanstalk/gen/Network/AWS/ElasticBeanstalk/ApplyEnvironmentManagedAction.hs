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
-- Module      : Network.AWS.ElasticBeanstalk.ApplyEnvironmentManagedAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies a scheduled managed action immediately. A managed action can be applied only if its status is @Scheduled@ . Get the status and action ID of a managed action with 'DescribeEnvironmentManagedActions' .
module Network.AWS.ElasticBeanstalk.ApplyEnvironmentManagedAction
  ( -- * Creating a Request
    applyEnvironmentManagedAction,
    ApplyEnvironmentManagedAction,

    -- * Request Lenses
    aemaEnvironmentId,
    aemaEnvironmentName,
    aemaActionId,

    -- * Destructuring the Response
    applyEnvironmentManagedActionResponse,
    ApplyEnvironmentManagedActionResponse,

    -- * Response Lenses
    aemarrsStatus,
    aemarrsActionType,
    aemarrsActionId,
    aemarrsActionDescription,
    aemarrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to execute a scheduled managed action immediately.
--
--
--
-- /See:/ 'applyEnvironmentManagedAction' smart constructor.
data ApplyEnvironmentManagedAction = ApplyEnvironmentManagedAction'
  { _aemaEnvironmentId ::
      !( Maybe
           Text
       ),
    _aemaEnvironmentName ::
      !( Maybe
           Text
       ),
    _aemaActionId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ApplyEnvironmentManagedAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aemaEnvironmentId' - The environment ID of the target environment.
--
-- * 'aemaEnvironmentName' - The name of the target environment.
--
-- * 'aemaActionId' - The action ID of the scheduled managed action to execute.
applyEnvironmentManagedAction ::
  -- | 'aemaActionId'
  Text ->
  ApplyEnvironmentManagedAction
applyEnvironmentManagedAction pActionId_ =
  ApplyEnvironmentManagedAction'
    { _aemaEnvironmentId =
        Nothing,
      _aemaEnvironmentName = Nothing,
      _aemaActionId = pActionId_
    }

-- | The environment ID of the target environment.
aemaEnvironmentId :: Lens' ApplyEnvironmentManagedAction (Maybe Text)
aemaEnvironmentId = lens _aemaEnvironmentId (\s a -> s {_aemaEnvironmentId = a})

-- | The name of the target environment.
aemaEnvironmentName :: Lens' ApplyEnvironmentManagedAction (Maybe Text)
aemaEnvironmentName = lens _aemaEnvironmentName (\s a -> s {_aemaEnvironmentName = a})

-- | The action ID of the scheduled managed action to execute.
aemaActionId :: Lens' ApplyEnvironmentManagedAction Text
aemaActionId = lens _aemaActionId (\s a -> s {_aemaActionId = a})

instance AWSRequest ApplyEnvironmentManagedAction where
  type
    Rs ApplyEnvironmentManagedAction =
      ApplyEnvironmentManagedActionResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "ApplyEnvironmentManagedActionResult"
      ( \s h x ->
          ApplyEnvironmentManagedActionResponse'
            <$> (x .@? "Status")
            <*> (x .@? "ActionType")
            <*> (x .@? "ActionId")
            <*> (x .@? "ActionDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable ApplyEnvironmentManagedAction

instance NFData ApplyEnvironmentManagedAction

instance ToHeaders ApplyEnvironmentManagedAction where
  toHeaders = const mempty

instance ToPath ApplyEnvironmentManagedAction where
  toPath = const "/"

instance ToQuery ApplyEnvironmentManagedAction where
  toQuery ApplyEnvironmentManagedAction' {..} =
    mconcat
      [ "Action"
          =: ("ApplyEnvironmentManagedAction" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "EnvironmentId" =: _aemaEnvironmentId,
        "EnvironmentName" =: _aemaEnvironmentName,
        "ActionId" =: _aemaActionId
      ]

-- | The result message containing information about the managed action.
--
--
--
-- /See:/ 'applyEnvironmentManagedActionResponse' smart constructor.
data ApplyEnvironmentManagedActionResponse = ApplyEnvironmentManagedActionResponse'
  { _aemarrsStatus ::
      !( Maybe
           Text
       ),
    _aemarrsActionType ::
      !( Maybe
           ActionType
       ),
    _aemarrsActionId ::
      !( Maybe
           Text
       ),
    _aemarrsActionDescription ::
      !( Maybe
           Text
       ),
    _aemarrsResponseStatus ::
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

-- | Creates a value of 'ApplyEnvironmentManagedActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aemarrsStatus' - The status of the managed action.
--
-- * 'aemarrsActionType' - The type of managed action.
--
-- * 'aemarrsActionId' - The action ID of the managed action.
--
-- * 'aemarrsActionDescription' - A description of the managed action.
--
-- * 'aemarrsResponseStatus' - -- | The response status code.
applyEnvironmentManagedActionResponse ::
  -- | 'aemarrsResponseStatus'
  Int ->
  ApplyEnvironmentManagedActionResponse
applyEnvironmentManagedActionResponse
  pResponseStatus_ =
    ApplyEnvironmentManagedActionResponse'
      { _aemarrsStatus =
          Nothing,
        _aemarrsActionType = Nothing,
        _aemarrsActionId = Nothing,
        _aemarrsActionDescription = Nothing,
        _aemarrsResponseStatus =
          pResponseStatus_
      }

-- | The status of the managed action.
aemarrsStatus :: Lens' ApplyEnvironmentManagedActionResponse (Maybe Text)
aemarrsStatus = lens _aemarrsStatus (\s a -> s {_aemarrsStatus = a})

-- | The type of managed action.
aemarrsActionType :: Lens' ApplyEnvironmentManagedActionResponse (Maybe ActionType)
aemarrsActionType = lens _aemarrsActionType (\s a -> s {_aemarrsActionType = a})

-- | The action ID of the managed action.
aemarrsActionId :: Lens' ApplyEnvironmentManagedActionResponse (Maybe Text)
aemarrsActionId = lens _aemarrsActionId (\s a -> s {_aemarrsActionId = a})

-- | A description of the managed action.
aemarrsActionDescription :: Lens' ApplyEnvironmentManagedActionResponse (Maybe Text)
aemarrsActionDescription = lens _aemarrsActionDescription (\s a -> s {_aemarrsActionDescription = a})

-- | -- | The response status code.
aemarrsResponseStatus :: Lens' ApplyEnvironmentManagedActionResponse Int
aemarrsResponseStatus = lens _aemarrsResponseStatus (\s a -> s {_aemarrsResponseStatus = a})

instance NFData ApplyEnvironmentManagedActionResponse
