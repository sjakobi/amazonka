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
-- Module      : Network.AWS.SSM.DeleteParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a parameter from the system.
module Network.AWS.SSM.DeleteParameter
  ( -- * Creating a Request
    deleteParameter,
    DeleteParameter,

    -- * Request Lenses
    dppName,

    -- * Destructuring the Response
    deleteParameterResponse,
    DeleteParameterResponse,

    -- * Response Lenses
    dprprsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'deleteParameter' smart constructor.
newtype DeleteParameter = DeleteParameter'
  { _dppName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dppName' - The name of the parameter to delete.
deleteParameter ::
  -- | 'dppName'
  Text ->
  DeleteParameter
deleteParameter pName_ =
  DeleteParameter' {_dppName = pName_}

-- | The name of the parameter to delete.
dppName :: Lens' DeleteParameter Text
dppName = lens _dppName (\s a -> s {_dppName = a})

instance AWSRequest DeleteParameter where
  type Rs DeleteParameter = DeleteParameterResponse
  request = postJSON ssm
  response =
    receiveEmpty
      ( \s h x ->
          DeleteParameterResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteParameter

instance NFData DeleteParameter

instance ToHeaders DeleteParameter where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DeleteParameter" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteParameter where
  toJSON DeleteParameter' {..} =
    object (catMaybes [Just ("Name" .= _dppName)])

instance ToPath DeleteParameter where
  toPath = const "/"

instance ToQuery DeleteParameter where
  toQuery = const mempty

-- | /See:/ 'deleteParameterResponse' smart constructor.
newtype DeleteParameterResponse = DeleteParameterResponse'
  { _dprprsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteParameterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprprsResponseStatus' - -- | The response status code.
deleteParameterResponse ::
  -- | 'dprprsResponseStatus'
  Int ->
  DeleteParameterResponse
deleteParameterResponse pResponseStatus_ =
  DeleteParameterResponse'
    { _dprprsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dprprsResponseStatus :: Lens' DeleteParameterResponse Int
dprprsResponseStatus = lens _dprprsResponseStatus (\s a -> s {_dprprsResponseStatus = a})

instance NFData DeleteParameterResponse
