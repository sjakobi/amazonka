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
-- Module      : Network.AWS.Pinpoint.DeleteApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an application.
module Network.AWS.Pinpoint.DeleteApp
  ( -- * Creating a Request
    deleteApp,
    DeleteApp,

    -- * Request Lenses
    daApplicationId,

    -- * Destructuring the Response
    deleteAppResponse,
    DeleteAppResponse,

    -- * Response Lenses
    darrsResponseStatus,
    darrsApplicationResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteApp' smart constructor.
newtype DeleteApp = DeleteApp'
  { _daApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
deleteApp ::
  -- | 'daApplicationId'
  Text ->
  DeleteApp
deleteApp pApplicationId_ =
  DeleteApp' {_daApplicationId = pApplicationId_}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
daApplicationId :: Lens' DeleteApp Text
daApplicationId = lens _daApplicationId (\s a -> s {_daApplicationId = a})

instance AWSRequest DeleteApp where
  type Rs DeleteApp = DeleteAppResponse
  request = delete pinpoint
  response =
    receiveJSON
      ( \s h x ->
          DeleteAppResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable DeleteApp

instance NFData DeleteApp

instance ToHeaders DeleteApp where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteApp where
  toPath DeleteApp' {..} =
    mconcat ["/v1/apps/", toBS _daApplicationId]

instance ToQuery DeleteApp where
  toQuery = const mempty

-- | /See:/ 'deleteAppResponse' smart constructor.
data DeleteAppResponse = DeleteAppResponse'
  { _darrsResponseStatus ::
      !Int,
    _darrsApplicationResponse ::
      !ApplicationResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteAppResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsResponseStatus' - -- | The response status code.
--
-- * 'darrsApplicationResponse' - Undocumented member.
deleteAppResponse ::
  -- | 'darrsResponseStatus'
  Int ->
  -- | 'darrsApplicationResponse'
  ApplicationResponse ->
  DeleteAppResponse
deleteAppResponse
  pResponseStatus_
  pApplicationResponse_ =
    DeleteAppResponse'
      { _darrsResponseStatus =
          pResponseStatus_,
        _darrsApplicationResponse = pApplicationResponse_
      }

-- | -- | The response status code.
darrsResponseStatus :: Lens' DeleteAppResponse Int
darrsResponseStatus = lens _darrsResponseStatus (\s a -> s {_darrsResponseStatus = a})

-- | Undocumented member.
darrsApplicationResponse :: Lens' DeleteAppResponse ApplicationResponse
darrsApplicationResponse = lens _darrsApplicationResponse (\s a -> s {_darrsApplicationResponse = a})

instance NFData DeleteAppResponse
