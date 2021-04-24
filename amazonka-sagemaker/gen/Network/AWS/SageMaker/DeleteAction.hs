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
-- Module      : Network.AWS.SageMaker.DeleteAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an action.
module Network.AWS.SageMaker.DeleteAction
  ( -- * Creating a Request
    deleteAction,
    DeleteAction,

    -- * Request Lenses
    daActionName,

    -- * Destructuring the Response
    deleteActionResponse,
    DeleteActionResponse,

    -- * Response Lenses
    drsActionARN,
    drsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteAction' smart constructor.
newtype DeleteAction = DeleteAction'
  { _daActionName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daActionName' - The name of the action to delete.
deleteAction ::
  -- | 'daActionName'
  Text ->
  DeleteAction
deleteAction pActionName_ =
  DeleteAction' {_daActionName = pActionName_}

-- | The name of the action to delete.
daActionName :: Lens' DeleteAction Text
daActionName = lens _daActionName (\s a -> s {_daActionName = a})

instance AWSRequest DeleteAction where
  type Rs DeleteAction = DeleteActionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DeleteActionResponse'
            <$> (x .?> "ActionArn") <*> (pure (fromEnum s))
      )

instance Hashable DeleteAction

instance NFData DeleteAction

instance ToHeaders DeleteAction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteAction" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteAction where
  toJSON DeleteAction' {..} =
    object
      (catMaybes [Just ("ActionName" .= _daActionName)])

instance ToPath DeleteAction where
  toPath = const "/"

instance ToQuery DeleteAction where
  toQuery = const mempty

-- | /See:/ 'deleteActionResponse' smart constructor.
data DeleteActionResponse = DeleteActionResponse'
  { _drsActionARN ::
      !(Maybe Text),
    _drsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsActionARN' - The Amazon Resource Name (ARN) of the action.
--
-- * 'drsResponseStatus' - -- | The response status code.
deleteActionResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DeleteActionResponse
deleteActionResponse pResponseStatus_ =
  DeleteActionResponse'
    { _drsActionARN = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the action.
drsActionARN :: Lens' DeleteActionResponse (Maybe Text)
drsActionARN = lens _drsActionARN (\s a -> s {_drsActionARN = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteActionResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DeleteActionResponse
