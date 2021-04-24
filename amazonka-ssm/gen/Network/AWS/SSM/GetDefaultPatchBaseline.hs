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
-- Module      : Network.AWS.SSM.GetDefaultPatchBaseline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the default patch baseline. Note that Systems Manager supports creating multiple default patch baselines. For example, you can create a default patch baseline for each operating system.
--
--
-- If you do not specify an operating system value, the default patch baseline for Windows is returned.
module Network.AWS.SSM.GetDefaultPatchBaseline
  ( -- * Creating a Request
    getDefaultPatchBaseline,
    GetDefaultPatchBaseline,

    -- * Request Lenses
    gdpbOperatingSystem,

    -- * Destructuring the Response
    getDefaultPatchBaselineResponse,
    GetDefaultPatchBaselineResponse,

    -- * Response Lenses
    gdpbrrsBaselineId,
    gdpbrrsOperatingSystem,
    gdpbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getDefaultPatchBaseline' smart constructor.
newtype GetDefaultPatchBaseline = GetDefaultPatchBaseline'
  { _gdpbOperatingSystem ::
      Maybe
        OperatingSystem
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetDefaultPatchBaseline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdpbOperatingSystem' - Returns the default patch baseline for the specified operating system.
getDefaultPatchBaseline ::
  GetDefaultPatchBaseline
getDefaultPatchBaseline =
  GetDefaultPatchBaseline'
    { _gdpbOperatingSystem =
        Nothing
    }

-- | Returns the default patch baseline for the specified operating system.
gdpbOperatingSystem :: Lens' GetDefaultPatchBaseline (Maybe OperatingSystem)
gdpbOperatingSystem = lens _gdpbOperatingSystem (\s a -> s {_gdpbOperatingSystem = a})

instance AWSRequest GetDefaultPatchBaseline where
  type
    Rs GetDefaultPatchBaseline =
      GetDefaultPatchBaselineResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetDefaultPatchBaselineResponse'
            <$> (x .?> "BaselineId")
            <*> (x .?> "OperatingSystem")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDefaultPatchBaseline

instance NFData GetDefaultPatchBaseline

instance ToHeaders GetDefaultPatchBaseline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetDefaultPatchBaseline" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDefaultPatchBaseline where
  toJSON GetDefaultPatchBaseline' {..} =
    object
      ( catMaybes
          [("OperatingSystem" .=) <$> _gdpbOperatingSystem]
      )

instance ToPath GetDefaultPatchBaseline where
  toPath = const "/"

instance ToQuery GetDefaultPatchBaseline where
  toQuery = const mempty

-- | /See:/ 'getDefaultPatchBaselineResponse' smart constructor.
data GetDefaultPatchBaselineResponse = GetDefaultPatchBaselineResponse'
  { _gdpbrrsBaselineId ::
      !( Maybe
           Text
       ),
    _gdpbrrsOperatingSystem ::
      !( Maybe
           OperatingSystem
       ),
    _gdpbrrsResponseStatus ::
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

-- | Creates a value of 'GetDefaultPatchBaselineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdpbrrsBaselineId' - The ID of the default patch baseline.
--
-- * 'gdpbrrsOperatingSystem' - The operating system for the returned patch baseline.
--
-- * 'gdpbrrsResponseStatus' - -- | The response status code.
getDefaultPatchBaselineResponse ::
  -- | 'gdpbrrsResponseStatus'
  Int ->
  GetDefaultPatchBaselineResponse
getDefaultPatchBaselineResponse pResponseStatus_ =
  GetDefaultPatchBaselineResponse'
    { _gdpbrrsBaselineId =
        Nothing,
      _gdpbrrsOperatingSystem = Nothing,
      _gdpbrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the default patch baseline.
gdpbrrsBaselineId :: Lens' GetDefaultPatchBaselineResponse (Maybe Text)
gdpbrrsBaselineId = lens _gdpbrrsBaselineId (\s a -> s {_gdpbrrsBaselineId = a})

-- | The operating system for the returned patch baseline.
gdpbrrsOperatingSystem :: Lens' GetDefaultPatchBaselineResponse (Maybe OperatingSystem)
gdpbrrsOperatingSystem = lens _gdpbrrsOperatingSystem (\s a -> s {_gdpbrrsOperatingSystem = a})

-- | -- | The response status code.
gdpbrrsResponseStatus :: Lens' GetDefaultPatchBaselineResponse Int
gdpbrrsResponseStatus = lens _gdpbrrsResponseStatus (\s a -> s {_gdpbrrsResponseStatus = a})

instance NFData GetDefaultPatchBaselineResponse
