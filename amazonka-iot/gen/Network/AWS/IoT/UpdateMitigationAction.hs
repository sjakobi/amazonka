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
-- Module      : Network.AWS.IoT.UpdateMitigationAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the definition for the specified mitigation action.
module Network.AWS.IoT.UpdateMitigationAction
  ( -- * Creating a Request
    updateMitigationAction,
    UpdateMitigationAction,

    -- * Request Lenses
    umaRoleARN,
    umaActionParams,
    umaActionName,

    -- * Destructuring the Response
    updateMitigationActionResponse,
    UpdateMitigationActionResponse,

    -- * Response Lenses
    umarrsActionARN,
    umarrsActionId,
    umarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateMitigationAction' smart constructor.
data UpdateMitigationAction = UpdateMitigationAction'
  { _umaRoleARN ::
      !(Maybe Text),
    _umaActionParams ::
      !( Maybe
           MitigationActionParams
       ),
    _umaActionName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateMitigationAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umaRoleARN' - The ARN of the IAM role that is used to apply the mitigation action.
--
-- * 'umaActionParams' - Defines the type of action and the parameters for that action.
--
-- * 'umaActionName' - The friendly name for the mitigation action. You cannot change the name by using @UpdateMitigationAction@ . Instead, you must delete and recreate the mitigation action with the new name.
updateMitigationAction ::
  -- | 'umaActionName'
  Text ->
  UpdateMitigationAction
updateMitigationAction pActionName_ =
  UpdateMitigationAction'
    { _umaRoleARN = Nothing,
      _umaActionParams = Nothing,
      _umaActionName = pActionName_
    }

-- | The ARN of the IAM role that is used to apply the mitigation action.
umaRoleARN :: Lens' UpdateMitigationAction (Maybe Text)
umaRoleARN = lens _umaRoleARN (\s a -> s {_umaRoleARN = a})

-- | Defines the type of action and the parameters for that action.
umaActionParams :: Lens' UpdateMitigationAction (Maybe MitigationActionParams)
umaActionParams = lens _umaActionParams (\s a -> s {_umaActionParams = a})

-- | The friendly name for the mitigation action. You cannot change the name by using @UpdateMitigationAction@ . Instead, you must delete and recreate the mitigation action with the new name.
umaActionName :: Lens' UpdateMitigationAction Text
umaActionName = lens _umaActionName (\s a -> s {_umaActionName = a})

instance AWSRequest UpdateMitigationAction where
  type
    Rs UpdateMitigationAction =
      UpdateMitigationActionResponse
  request = patchJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          UpdateMitigationActionResponse'
            <$> (x .?> "actionArn")
            <*> (x .?> "actionId")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateMitigationAction

instance NFData UpdateMitigationAction

instance ToHeaders UpdateMitigationAction where
  toHeaders = const mempty

instance ToJSON UpdateMitigationAction where
  toJSON UpdateMitigationAction' {..} =
    object
      ( catMaybes
          [ ("roleArn" .=) <$> _umaRoleARN,
            ("actionParams" .=) <$> _umaActionParams
          ]
      )

instance ToPath UpdateMitigationAction where
  toPath UpdateMitigationAction' {..} =
    mconcat
      ["/mitigationactions/actions/", toBS _umaActionName]

instance ToQuery UpdateMitigationAction where
  toQuery = const mempty

-- | /See:/ 'updateMitigationActionResponse' smart constructor.
data UpdateMitigationActionResponse = UpdateMitigationActionResponse'
  { _umarrsActionARN ::
      !( Maybe
           Text
       ),
    _umarrsActionId ::
      !( Maybe
           Text
       ),
    _umarrsResponseStatus ::
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

-- | Creates a value of 'UpdateMitigationActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umarrsActionARN' - The ARN for the new mitigation action.
--
-- * 'umarrsActionId' - A unique identifier for the mitigation action.
--
-- * 'umarrsResponseStatus' - -- | The response status code.
updateMitigationActionResponse ::
  -- | 'umarrsResponseStatus'
  Int ->
  UpdateMitigationActionResponse
updateMitigationActionResponse pResponseStatus_ =
  UpdateMitigationActionResponse'
    { _umarrsActionARN =
        Nothing,
      _umarrsActionId = Nothing,
      _umarrsResponseStatus = pResponseStatus_
    }

-- | The ARN for the new mitigation action.
umarrsActionARN :: Lens' UpdateMitigationActionResponse (Maybe Text)
umarrsActionARN = lens _umarrsActionARN (\s a -> s {_umarrsActionARN = a})

-- | A unique identifier for the mitigation action.
umarrsActionId :: Lens' UpdateMitigationActionResponse (Maybe Text)
umarrsActionId = lens _umarrsActionId (\s a -> s {_umarrsActionId = a})

-- | -- | The response status code.
umarrsResponseStatus :: Lens' UpdateMitigationActionResponse Int
umarrsResponseStatus = lens _umarrsResponseStatus (\s a -> s {_umarrsResponseStatus = a})

instance NFData UpdateMitigationActionResponse
