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
-- Module      : Network.AWS.SSM.GetParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a parameter by using the parameter name. Don't confuse this API action with the 'GetParameters' API action.
module Network.AWS.SSM.GetParameter
  ( -- * Creating a Request
    getParameter,
    GetParameter,

    -- * Request Lenses
    gpWithDecryption,
    gpName,

    -- * Destructuring the Response
    getParameterResponse,
    GetParameterResponse,

    -- * Response Lenses
    gprrsParameter,
    gprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getParameter' smart constructor.
data GetParameter = GetParameter'
  { _gpWithDecryption ::
      !(Maybe Bool),
    _gpName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpWithDecryption' - Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.
--
-- * 'gpName' - The name of the parameter you want to query.
getParameter ::
  -- | 'gpName'
  Text ->
  GetParameter
getParameter pName_ =
  GetParameter'
    { _gpWithDecryption = Nothing,
      _gpName = pName_
    }

-- | Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.
gpWithDecryption :: Lens' GetParameter (Maybe Bool)
gpWithDecryption = lens _gpWithDecryption (\s a -> s {_gpWithDecryption = a})

-- | The name of the parameter you want to query.
gpName :: Lens' GetParameter Text
gpName = lens _gpName (\s a -> s {_gpName = a})

instance AWSRequest GetParameter where
  type Rs GetParameter = GetParameterResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetParameterResponse'
            <$> (x .?> "Parameter") <*> (pure (fromEnum s))
      )

instance Hashable GetParameter

instance NFData GetParameter

instance ToHeaders GetParameter where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetParameter" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetParameter where
  toJSON GetParameter' {..} =
    object
      ( catMaybes
          [ ("WithDecryption" .=) <$> _gpWithDecryption,
            Just ("Name" .= _gpName)
          ]
      )

instance ToPath GetParameter where
  toPath = const "/"

instance ToQuery GetParameter where
  toQuery = const mempty

-- | /See:/ 'getParameterResponse' smart constructor.
data GetParameterResponse = GetParameterResponse'
  { _gprrsParameter ::
      !(Maybe Parameter),
    _gprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetParameterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gprrsParameter' - Information about a parameter.
--
-- * 'gprrsResponseStatus' - -- | The response status code.
getParameterResponse ::
  -- | 'gprrsResponseStatus'
  Int ->
  GetParameterResponse
getParameterResponse pResponseStatus_ =
  GetParameterResponse'
    { _gprrsParameter = Nothing,
      _gprrsResponseStatus = pResponseStatus_
    }

-- | Information about a parameter.
gprrsParameter :: Lens' GetParameterResponse (Maybe Parameter)
gprrsParameter = lens _gprrsParameter (\s a -> s {_gprrsParameter = a})

-- | -- | The response status code.
gprrsResponseStatus :: Lens' GetParameterResponse Int
gprrsResponseStatus = lens _gprrsResponseStatus (\s a -> s {_gprrsResponseStatus = a})

instance NFData GetParameterResponse
