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
-- Module      : Network.AWS.Lambda.CreateCodeSigningConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a code signing configuration. A <https://docs.aws.amazon.com/lambda/latest/dg/configuration-trustedcode.html code signing configuration> defines a list of allowed signing profiles and defines the code-signing validation policy (action to be taken if deployment validation checks fail).
module Network.AWS.Lambda.CreateCodeSigningConfig
  ( -- * Creating a Request
    createCodeSigningConfig,
    CreateCodeSigningConfig,

    -- * Request Lenses
    ccscDescription,
    ccscCodeSigningPolicies,
    ccscAllowedPublishers,

    -- * Destructuring the Response
    createCodeSigningConfigResponse,
    CreateCodeSigningConfigResponse,

    -- * Response Lenses
    ccscrrsResponseStatus,
    ccscrrsCodeSigningConfig,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createCodeSigningConfig' smart constructor.
data CreateCodeSigningConfig = CreateCodeSigningConfig'
  { _ccscDescription ::
      !(Maybe Text),
    _ccscCodeSigningPolicies ::
      !( Maybe
           CodeSigningPolicies
       ),
    _ccscAllowedPublishers ::
      !AllowedPublishers
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateCodeSigningConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccscDescription' - Descriptive name for this code signing configuration.
--
-- * 'ccscCodeSigningPolicies' - The code signing policies define the actions to take if the validation checks fail.
--
-- * 'ccscAllowedPublishers' - Signing profiles for this code signing configuration.
createCodeSigningConfig ::
  -- | 'ccscAllowedPublishers'
  AllowedPublishers ->
  CreateCodeSigningConfig
createCodeSigningConfig pAllowedPublishers_ =
  CreateCodeSigningConfig'
    { _ccscDescription =
        Nothing,
      _ccscCodeSigningPolicies = Nothing,
      _ccscAllowedPublishers = pAllowedPublishers_
    }

-- | Descriptive name for this code signing configuration.
ccscDescription :: Lens' CreateCodeSigningConfig (Maybe Text)
ccscDescription = lens _ccscDescription (\s a -> s {_ccscDescription = a})

-- | The code signing policies define the actions to take if the validation checks fail.
ccscCodeSigningPolicies :: Lens' CreateCodeSigningConfig (Maybe CodeSigningPolicies)
ccscCodeSigningPolicies = lens _ccscCodeSigningPolicies (\s a -> s {_ccscCodeSigningPolicies = a})

-- | Signing profiles for this code signing configuration.
ccscAllowedPublishers :: Lens' CreateCodeSigningConfig AllowedPublishers
ccscAllowedPublishers = lens _ccscAllowedPublishers (\s a -> s {_ccscAllowedPublishers = a})

instance AWSRequest CreateCodeSigningConfig where
  type
    Rs CreateCodeSigningConfig =
      CreateCodeSigningConfigResponse
  request = postJSON lambda
  response =
    receiveJSON
      ( \s h x ->
          CreateCodeSigningConfigResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "CodeSigningConfig")
      )

instance Hashable CreateCodeSigningConfig

instance NFData CreateCodeSigningConfig

instance ToHeaders CreateCodeSigningConfig where
  toHeaders = const mempty

instance ToJSON CreateCodeSigningConfig where
  toJSON CreateCodeSigningConfig' {..} =
    object
      ( catMaybes
          [ ("Description" .=) <$> _ccscDescription,
            ("CodeSigningPolicies" .=)
              <$> _ccscCodeSigningPolicies,
            Just
              ("AllowedPublishers" .= _ccscAllowedPublishers)
          ]
      )

instance ToPath CreateCodeSigningConfig where
  toPath = const "/2020-04-22/code-signing-configs/"

instance ToQuery CreateCodeSigningConfig where
  toQuery = const mempty

-- | /See:/ 'createCodeSigningConfigResponse' smart constructor.
data CreateCodeSigningConfigResponse = CreateCodeSigningConfigResponse'
  { _ccscrrsResponseStatus ::
      !Int,
    _ccscrrsCodeSigningConfig ::
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

-- | Creates a value of 'CreateCodeSigningConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccscrrsResponseStatus' - -- | The response status code.
--
-- * 'ccscrrsCodeSigningConfig' - The code signing configuration.
createCodeSigningConfigResponse ::
  -- | 'ccscrrsResponseStatus'
  Int ->
  -- | 'ccscrrsCodeSigningConfig'
  CodeSigningConfig ->
  CreateCodeSigningConfigResponse
createCodeSigningConfigResponse
  pResponseStatus_
  pCodeSigningConfig_ =
    CreateCodeSigningConfigResponse'
      { _ccscrrsResponseStatus =
          pResponseStatus_,
        _ccscrrsCodeSigningConfig =
          pCodeSigningConfig_
      }

-- | -- | The response status code.
ccscrrsResponseStatus :: Lens' CreateCodeSigningConfigResponse Int
ccscrrsResponseStatus = lens _ccscrrsResponseStatus (\s a -> s {_ccscrrsResponseStatus = a})

-- | The code signing configuration.
ccscrrsCodeSigningConfig :: Lens' CreateCodeSigningConfigResponse CodeSigningConfig
ccscrrsCodeSigningConfig = lens _ccscrrsCodeSigningConfig (\s a -> s {_ccscrrsCodeSigningConfig = a})

instance NFData CreateCodeSigningConfigResponse
