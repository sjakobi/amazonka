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
-- Module      : Network.AWS.SMS.GetAppValidationOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves output from validating an application.
module Network.AWS.SMS.GetAppValidationOutput
  ( -- * Creating a Request
    getAppValidationOutput,
    GetAppValidationOutput,

    -- * Request Lenses
    gavoAppId,

    -- * Destructuring the Response
    getAppValidationOutputResponse,
    GetAppValidationOutputResponse,

    -- * Response Lenses
    gavorrsValidationOutputList,
    gavorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'getAppValidationOutput' smart constructor.
newtype GetAppValidationOutput = GetAppValidationOutput'
  { _gavoAppId ::
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

-- | Creates a value of 'GetAppValidationOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gavoAppId' - The ID of the application.
getAppValidationOutput ::
  -- | 'gavoAppId'
  Text ->
  GetAppValidationOutput
getAppValidationOutput pAppId_ =
  GetAppValidationOutput' {_gavoAppId = pAppId_}

-- | The ID of the application.
gavoAppId :: Lens' GetAppValidationOutput Text
gavoAppId = lens _gavoAppId (\s a -> s {_gavoAppId = a})

instance AWSRequest GetAppValidationOutput where
  type
    Rs GetAppValidationOutput =
      GetAppValidationOutputResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          GetAppValidationOutputResponse'
            <$> (x .?> "validationOutputList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetAppValidationOutput

instance NFData GetAppValidationOutput

instance ToHeaders GetAppValidationOutput where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.GetAppValidationOutput" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAppValidationOutput where
  toJSON GetAppValidationOutput' {..} =
    object (catMaybes [Just ("appId" .= _gavoAppId)])

instance ToPath GetAppValidationOutput where
  toPath = const "/"

instance ToQuery GetAppValidationOutput where
  toQuery = const mempty

-- | /See:/ 'getAppValidationOutputResponse' smart constructor.
data GetAppValidationOutputResponse = GetAppValidationOutputResponse'
  { _gavorrsValidationOutputList ::
      !( Maybe
           [ValidationOutput]
       ),
    _gavorrsResponseStatus ::
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

-- | Creates a value of 'GetAppValidationOutputResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gavorrsValidationOutputList' - The validation output.
--
-- * 'gavorrsResponseStatus' - -- | The response status code.
getAppValidationOutputResponse ::
  -- | 'gavorrsResponseStatus'
  Int ->
  GetAppValidationOutputResponse
getAppValidationOutputResponse pResponseStatus_ =
  GetAppValidationOutputResponse'
    { _gavorrsValidationOutputList =
        Nothing,
      _gavorrsResponseStatus = pResponseStatus_
    }

-- | The validation output.
gavorrsValidationOutputList :: Lens' GetAppValidationOutputResponse [ValidationOutput]
gavorrsValidationOutputList = lens _gavorrsValidationOutputList (\s a -> s {_gavorrsValidationOutputList = a}) . _Default . _Coerce

-- | -- | The response status code.
gavorrsResponseStatus :: Lens' GetAppValidationOutputResponse Int
gavorrsResponseStatus = lens _gavorrsResponseStatus (\s a -> s {_gavorrsResponseStatus = a})

instance NFData GetAppValidationOutputResponse
