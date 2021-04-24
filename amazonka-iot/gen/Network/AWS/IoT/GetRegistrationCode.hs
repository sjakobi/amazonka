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
-- Module      : Network.AWS.IoT.GetRegistrationCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a registration code used to register a CA certificate with AWS IoT.
module Network.AWS.IoT.GetRegistrationCode
  ( -- * Creating a Request
    getRegistrationCode,
    GetRegistrationCode,

    -- * Destructuring the Response
    getRegistrationCodeResponse,
    GetRegistrationCodeResponse,

    -- * Response Lenses
    grcrrsRegistrationCode,
    grcrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input to the GetRegistrationCode operation.
--
--
--
-- /See:/ 'getRegistrationCode' smart constructor.
data GetRegistrationCode = GetRegistrationCode'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRegistrationCode' with the minimum fields required to make a request.
getRegistrationCode ::
  GetRegistrationCode
getRegistrationCode = GetRegistrationCode'

instance AWSRequest GetRegistrationCode where
  type
    Rs GetRegistrationCode =
      GetRegistrationCodeResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          GetRegistrationCodeResponse'
            <$> (x .?> "registrationCode") <*> (pure (fromEnum s))
      )

instance Hashable GetRegistrationCode

instance NFData GetRegistrationCode

instance ToHeaders GetRegistrationCode where
  toHeaders = const mempty

instance ToPath GetRegistrationCode where
  toPath = const "/registrationcode"

instance ToQuery GetRegistrationCode where
  toQuery = const mempty

-- | The output from the GetRegistrationCode operation.
--
--
--
-- /See:/ 'getRegistrationCodeResponse' smart constructor.
data GetRegistrationCodeResponse = GetRegistrationCodeResponse'
  { _grcrrsRegistrationCode ::
      !(Maybe Text),
    _grcrrsResponseStatus ::
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

-- | Creates a value of 'GetRegistrationCodeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grcrrsRegistrationCode' - The CA certificate registration code.
--
-- * 'grcrrsResponseStatus' - -- | The response status code.
getRegistrationCodeResponse ::
  -- | 'grcrrsResponseStatus'
  Int ->
  GetRegistrationCodeResponse
getRegistrationCodeResponse pResponseStatus_ =
  GetRegistrationCodeResponse'
    { _grcrrsRegistrationCode =
        Nothing,
      _grcrrsResponseStatus = pResponseStatus_
    }

-- | The CA certificate registration code.
grcrrsRegistrationCode :: Lens' GetRegistrationCodeResponse (Maybe Text)
grcrrsRegistrationCode = lens _grcrrsRegistrationCode (\s a -> s {_grcrrsRegistrationCode = a})

-- | -- | The response status code.
grcrrsResponseStatus :: Lens' GetRegistrationCodeResponse Int
grcrrsResponseStatus = lens _grcrrsResponseStatus (\s a -> s {_grcrrsResponseStatus = a})

instance NFData GetRegistrationCodeResponse
