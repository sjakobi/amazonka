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
-- Module      : Network.AWS.SageMaker.UpdateAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an action.
module Network.AWS.SageMaker.UpdateAction
  ( -- * Creating a Request
    updateAction,
    UpdateAction,

    -- * Request Lenses
    uaStatus,
    uaPropertiesToRemove,
    uaProperties,
    uaDescription,
    uaActionName,

    -- * Destructuring the Response
    updateActionResponse,
    UpdateActionResponse,

    -- * Response Lenses
    uarrsActionARN,
    uarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateAction' smart constructor.
data UpdateAction = UpdateAction'
  { _uaStatus ::
      !(Maybe ActionStatus),
    _uaPropertiesToRemove :: !(Maybe [Text]),
    _uaProperties :: !(Maybe (Map Text Text)),
    _uaDescription :: !(Maybe Text),
    _uaActionName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaStatus' - The new status for the action.
--
-- * 'uaPropertiesToRemove' - A list of properties to remove.
--
-- * 'uaProperties' - The new list of properties. Overwrites the current property list.
--
-- * 'uaDescription' - The new description for the action.
--
-- * 'uaActionName' - The name of the action to update.
updateAction ::
  -- | 'uaActionName'
  Text ->
  UpdateAction
updateAction pActionName_ =
  UpdateAction'
    { _uaStatus = Nothing,
      _uaPropertiesToRemove = Nothing,
      _uaProperties = Nothing,
      _uaDescription = Nothing,
      _uaActionName = pActionName_
    }

-- | The new status for the action.
uaStatus :: Lens' UpdateAction (Maybe ActionStatus)
uaStatus = lens _uaStatus (\s a -> s {_uaStatus = a})

-- | A list of properties to remove.
uaPropertiesToRemove :: Lens' UpdateAction [Text]
uaPropertiesToRemove = lens _uaPropertiesToRemove (\s a -> s {_uaPropertiesToRemove = a}) . _Default . _Coerce

-- | The new list of properties. Overwrites the current property list.
uaProperties :: Lens' UpdateAction (HashMap Text Text)
uaProperties = lens _uaProperties (\s a -> s {_uaProperties = a}) . _Default . _Map

-- | The new description for the action.
uaDescription :: Lens' UpdateAction (Maybe Text)
uaDescription = lens _uaDescription (\s a -> s {_uaDescription = a})

-- | The name of the action to update.
uaActionName :: Lens' UpdateAction Text
uaActionName = lens _uaActionName (\s a -> s {_uaActionName = a})

instance AWSRequest UpdateAction where
  type Rs UpdateAction = UpdateActionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdateActionResponse'
            <$> (x .?> "ActionArn") <*> (pure (fromEnum s))
      )

instance Hashable UpdateAction

instance NFData UpdateAction

instance ToHeaders UpdateAction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateAction" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateAction where
  toJSON UpdateAction' {..} =
    object
      ( catMaybes
          [ ("Status" .=) <$> _uaStatus,
            ("PropertiesToRemove" .=) <$> _uaPropertiesToRemove,
            ("Properties" .=) <$> _uaProperties,
            ("Description" .=) <$> _uaDescription,
            Just ("ActionName" .= _uaActionName)
          ]
      )

instance ToPath UpdateAction where
  toPath = const "/"

instance ToQuery UpdateAction where
  toQuery = const mempty

-- | /See:/ 'updateActionResponse' smart constructor.
data UpdateActionResponse = UpdateActionResponse'
  { _uarrsActionARN ::
      !(Maybe Text),
    _uarrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uarrsActionARN' - The Amazon Resource Name (ARN) of the action.
--
-- * 'uarrsResponseStatus' - -- | The response status code.
updateActionResponse ::
  -- | 'uarrsResponseStatus'
  Int ->
  UpdateActionResponse
updateActionResponse pResponseStatus_ =
  UpdateActionResponse'
    { _uarrsActionARN = Nothing,
      _uarrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the action.
uarrsActionARN :: Lens' UpdateActionResponse (Maybe Text)
uarrsActionARN = lens _uarrsActionARN (\s a -> s {_uarrsActionARN = a})

-- | -- | The response status code.
uarrsResponseStatus :: Lens' UpdateActionResponse Int
uarrsResponseStatus = lens _uarrsResponseStatus (\s a -> s {_uarrsResponseStatus = a})

instance NFData UpdateActionResponse
