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
-- Module      : Network.AWS.Lambda.UpdateCodeSigningConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the code signing configuration. Changes to the code signing configuration take effect the next time a user tries to deploy a code package to the function.
module Network.AWS.Lambda.UpdateCodeSigningConfig
  ( -- * Creating a Request
    updateCodeSigningConfig,
    UpdateCodeSigningConfig,

    -- * Request Lenses
    ucscAllowedPublishers,
    ucscDescription,
    ucscCodeSigningPolicies,
    ucscCodeSigningConfigARN,

    -- * Destructuring the Response
    updateCodeSigningConfigResponse,
    UpdateCodeSigningConfigResponse,

    -- * Response Lenses
    ucscrrsResponseStatus,
    ucscrrsCodeSigningConfig,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateCodeSigningConfig' smart constructor.
data UpdateCodeSigningConfig = UpdateCodeSigningConfig'
  { _ucscAllowedPublishers ::
      !( Maybe
           AllowedPublishers
       ),
    _ucscDescription ::
      !(Maybe Text),
    _ucscCodeSigningPolicies ::
      !( Maybe
           CodeSigningPolicies
       ),
    _ucscCodeSigningConfigARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateCodeSigningConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucscAllowedPublishers' - Signing profiles for this code signing configuration.
--
-- * 'ucscDescription' - Descriptive name for this code signing configuration.
--
-- * 'ucscCodeSigningPolicies' - The code signing policy.
--
-- * 'ucscCodeSigningConfigARN' - The The Amazon Resource Name (ARN) of the code signing configuration.
updateCodeSigningConfig ::
  -- | 'ucscCodeSigningConfigARN'
  Text ->
  UpdateCodeSigningConfig
updateCodeSigningConfig pCodeSigningConfigARN_ =
  UpdateCodeSigningConfig'
    { _ucscAllowedPublishers =
        Nothing,
      _ucscDescription = Nothing,
      _ucscCodeSigningPolicies = Nothing,
      _ucscCodeSigningConfigARN = pCodeSigningConfigARN_
    }

-- | Signing profiles for this code signing configuration.
ucscAllowedPublishers :: Lens' UpdateCodeSigningConfig (Maybe AllowedPublishers)
ucscAllowedPublishers = lens _ucscAllowedPublishers (\s a -> s {_ucscAllowedPublishers = a})

-- | Descriptive name for this code signing configuration.
ucscDescription :: Lens' UpdateCodeSigningConfig (Maybe Text)
ucscDescription = lens _ucscDescription (\s a -> s {_ucscDescription = a})

-- | The code signing policy.
ucscCodeSigningPolicies :: Lens' UpdateCodeSigningConfig (Maybe CodeSigningPolicies)
ucscCodeSigningPolicies = lens _ucscCodeSigningPolicies (\s a -> s {_ucscCodeSigningPolicies = a})

-- | The The Amazon Resource Name (ARN) of the code signing configuration.
ucscCodeSigningConfigARN :: Lens' UpdateCodeSigningConfig Text
ucscCodeSigningConfigARN = lens _ucscCodeSigningConfigARN (\s a -> s {_ucscCodeSigningConfigARN = a})

instance AWSRequest UpdateCodeSigningConfig where
  type
    Rs UpdateCodeSigningConfig =
      UpdateCodeSigningConfigResponse
  request = putJSON lambda
  response =
    receiveJSON
      ( \s h x ->
          UpdateCodeSigningConfigResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "CodeSigningConfig")
      )

instance Hashable UpdateCodeSigningConfig

instance NFData UpdateCodeSigningConfig

instance ToHeaders UpdateCodeSigningConfig where
  toHeaders = const mempty

instance ToJSON UpdateCodeSigningConfig where
  toJSON UpdateCodeSigningConfig' {..} =
    object
      ( catMaybes
          [ ("AllowedPublishers" .=) <$> _ucscAllowedPublishers,
            ("Description" .=) <$> _ucscDescription,
            ("CodeSigningPolicies" .=)
              <$> _ucscCodeSigningPolicies
          ]
      )

instance ToPath UpdateCodeSigningConfig where
  toPath UpdateCodeSigningConfig' {..} =
    mconcat
      [ "/2020-04-22/code-signing-configs/",
        toBS _ucscCodeSigningConfigARN
      ]

instance ToQuery UpdateCodeSigningConfig where
  toQuery = const mempty

-- | /See:/ 'updateCodeSigningConfigResponse' smart constructor.
data UpdateCodeSigningConfigResponse = UpdateCodeSigningConfigResponse'
  { _ucscrrsResponseStatus ::
      !Int,
    _ucscrrsCodeSigningConfig ::
      !CodeSigningConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateCodeSigningConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucscrrsResponseStatus' - -- | The response status code.
--
-- * 'ucscrrsCodeSigningConfig' - The code signing configuration
updateCodeSigningConfigResponse ::
  -- | 'ucscrrsResponseStatus'
  Int ->
  -- | 'ucscrrsCodeSigningConfig'
  CodeSigningConfig ->
  UpdateCodeSigningConfigResponse
updateCodeSigningConfigResponse
  pResponseStatus_
  pCodeSigningConfig_ =
    UpdateCodeSigningConfigResponse'
      { _ucscrrsResponseStatus =
          pResponseStatus_,
        _ucscrrsCodeSigningConfig =
          pCodeSigningConfig_
      }

-- | -- | The response status code.
ucscrrsResponseStatus :: Lens' UpdateCodeSigningConfigResponse Int
ucscrrsResponseStatus = lens _ucscrrsResponseStatus (\s a -> s {_ucscrrsResponseStatus = a})

-- | The code signing configuration
ucscrrsCodeSigningConfig :: Lens' UpdateCodeSigningConfigResponse CodeSigningConfig
ucscrrsCodeSigningConfig = lens _ucscrrsCodeSigningConfig (\s a -> s {_ucscrrsCodeSigningConfig = a})

instance NFData UpdateCodeSigningConfigResponse
