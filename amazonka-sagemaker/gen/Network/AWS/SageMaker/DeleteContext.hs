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
-- Module      : Network.AWS.SageMaker.DeleteContext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an context.
module Network.AWS.SageMaker.DeleteContext
  ( -- * Creating a Request
    deleteContext,
    DeleteContext,

    -- * Request Lenses
    dcContextName,

    -- * Destructuring the Response
    deleteContextResponse,
    DeleteContextResponse,

    -- * Response Lenses
    dcrrsContextARN,
    dcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteContext' smart constructor.
newtype DeleteContext = DeleteContext'
  { _dcContextName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcContextName' - The name of the context to delete.
deleteContext ::
  -- | 'dcContextName'
  Text ->
  DeleteContext
deleteContext pContextName_ =
  DeleteContext' {_dcContextName = pContextName_}

-- | The name of the context to delete.
dcContextName :: Lens' DeleteContext Text
dcContextName = lens _dcContextName (\s a -> s {_dcContextName = a})

instance AWSRequest DeleteContext where
  type Rs DeleteContext = DeleteContextResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DeleteContextResponse'
            <$> (x .?> "ContextArn") <*> (pure (fromEnum s))
      )

instance Hashable DeleteContext

instance NFData DeleteContext

instance ToHeaders DeleteContext where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteContext" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteContext where
  toJSON DeleteContext' {..} =
    object
      (catMaybes [Just ("ContextName" .= _dcContextName)])

instance ToPath DeleteContext where
  toPath = const "/"

instance ToQuery DeleteContext where
  toQuery = const mempty

-- | /See:/ 'deleteContextResponse' smart constructor.
data DeleteContextResponse = DeleteContextResponse'
  { _dcrrsContextARN ::
      !(Maybe Text),
    _dcrrsResponseStatus ::
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

-- | Creates a value of 'DeleteContextResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsContextARN' - The Amazon Resource Name (ARN) of the context.
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
deleteContextResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DeleteContextResponse
deleteContextResponse pResponseStatus_ =
  DeleteContextResponse'
    { _dcrrsContextARN = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the context.
dcrrsContextARN :: Lens' DeleteContextResponse (Maybe Text)
dcrrsContextARN = lens _dcrrsContextARN (\s a -> s {_dcrrsContextARN = a})

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DeleteContextResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DeleteContextResponse
