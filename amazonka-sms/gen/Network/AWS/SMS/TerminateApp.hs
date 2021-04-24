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
-- Module      : Network.AWS.SMS.TerminateApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Terminates the stack for the specified application.
module Network.AWS.SMS.TerminateApp
  ( -- * Creating a Request
    terminateApp,
    TerminateApp,

    -- * Request Lenses
    taAppId,

    -- * Destructuring the Response
    terminateAppResponse,
    TerminateAppResponse,

    -- * Response Lenses
    tarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'terminateApp' smart constructor.
newtype TerminateApp = TerminateApp'
  { _taAppId ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TerminateApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'taAppId' - The ID of the application.
terminateApp ::
  TerminateApp
terminateApp = TerminateApp' {_taAppId = Nothing}

-- | The ID of the application.
taAppId :: Lens' TerminateApp (Maybe Text)
taAppId = lens _taAppId (\s a -> s {_taAppId = a})

instance AWSRequest TerminateApp where
  type Rs TerminateApp = TerminateAppResponse
  request = postJSON sms
  response =
    receiveEmpty
      ( \s h x ->
          TerminateAppResponse' <$> (pure (fromEnum s))
      )

instance Hashable TerminateApp

instance NFData TerminateApp

instance ToHeaders TerminateApp where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.TerminateApp" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TerminateApp where
  toJSON TerminateApp' {..} =
    object (catMaybes [("appId" .=) <$> _taAppId])

instance ToPath TerminateApp where
  toPath = const "/"

instance ToQuery TerminateApp where
  toQuery = const mempty

-- | /See:/ 'terminateAppResponse' smart constructor.
newtype TerminateAppResponse = TerminateAppResponse'
  { _tarrsResponseStatus ::
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

-- | Creates a value of 'TerminateAppResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tarrsResponseStatus' - -- | The response status code.
terminateAppResponse ::
  -- | 'tarrsResponseStatus'
  Int ->
  TerminateAppResponse
terminateAppResponse pResponseStatus_ =
  TerminateAppResponse'
    { _tarrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
tarrsResponseStatus :: Lens' TerminateAppResponse Int
tarrsResponseStatus = lens _tarrsResponseStatus (\s a -> s {_tarrsResponseStatus = a})

instance NFData TerminateAppResponse
