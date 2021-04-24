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
-- Module      : Network.AWS.IoT.ValidateSecurityProfileBehaviors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates a Device Defender security profile behaviors specification.
module Network.AWS.IoT.ValidateSecurityProfileBehaviors
  ( -- * Creating a Request
    validateSecurityProfileBehaviors,
    ValidateSecurityProfileBehaviors,

    -- * Request Lenses
    vspbBehaviors,

    -- * Destructuring the Response
    validateSecurityProfileBehaviorsResponse,
    ValidateSecurityProfileBehaviorsResponse,

    -- * Response Lenses
    vspbrrsValidationErrors,
    vspbrrsValid,
    vspbrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'validateSecurityProfileBehaviors' smart constructor.
newtype ValidateSecurityProfileBehaviors = ValidateSecurityProfileBehaviors'
  { _vspbBehaviors ::
      [Behavior]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ValidateSecurityProfileBehaviors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vspbBehaviors' - Specifies the behaviors that, when violated by a device (thing), cause an alert.
validateSecurityProfileBehaviors ::
  ValidateSecurityProfileBehaviors
validateSecurityProfileBehaviors =
  ValidateSecurityProfileBehaviors'
    { _vspbBehaviors =
        mempty
    }

-- | Specifies the behaviors that, when violated by a device (thing), cause an alert.
vspbBehaviors :: Lens' ValidateSecurityProfileBehaviors [Behavior]
vspbBehaviors = lens _vspbBehaviors (\s a -> s {_vspbBehaviors = a}) . _Coerce

instance AWSRequest ValidateSecurityProfileBehaviors where
  type
    Rs ValidateSecurityProfileBehaviors =
      ValidateSecurityProfileBehaviorsResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          ValidateSecurityProfileBehaviorsResponse'
            <$> (x .?> "validationErrors" .!@ mempty)
            <*> (x .?> "valid")
            <*> (pure (fromEnum s))
      )

instance Hashable ValidateSecurityProfileBehaviors

instance NFData ValidateSecurityProfileBehaviors

instance ToHeaders ValidateSecurityProfileBehaviors where
  toHeaders = const mempty

instance ToJSON ValidateSecurityProfileBehaviors where
  toJSON ValidateSecurityProfileBehaviors' {..} =
    object
      (catMaybes [Just ("behaviors" .= _vspbBehaviors)])

instance ToPath ValidateSecurityProfileBehaviors where
  toPath = const "/security-profile-behaviors/validate"

instance ToQuery ValidateSecurityProfileBehaviors where
  toQuery = const mempty

-- | /See:/ 'validateSecurityProfileBehaviorsResponse' smart constructor.
data ValidateSecurityProfileBehaviorsResponse = ValidateSecurityProfileBehaviorsResponse'
  { _vspbrrsValidationErrors ::
      !( Maybe
           [ValidationError]
       ),
    _vspbrrsValid ::
      !( Maybe
           Bool
       ),
    _vspbrrsResponseStatus ::
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

-- | Creates a value of 'ValidateSecurityProfileBehaviorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vspbrrsValidationErrors' - The list of any errors found in the behaviors.
--
-- * 'vspbrrsValid' - True if the behaviors were valid.
--
-- * 'vspbrrsResponseStatus' - -- | The response status code.
validateSecurityProfileBehaviorsResponse ::
  -- | 'vspbrrsResponseStatus'
  Int ->
  ValidateSecurityProfileBehaviorsResponse
validateSecurityProfileBehaviorsResponse
  pResponseStatus_ =
    ValidateSecurityProfileBehaviorsResponse'
      { _vspbrrsValidationErrors =
          Nothing,
        _vspbrrsValid = Nothing,
        _vspbrrsResponseStatus =
          pResponseStatus_
      }

-- | The list of any errors found in the behaviors.
vspbrrsValidationErrors :: Lens' ValidateSecurityProfileBehaviorsResponse [ValidationError]
vspbrrsValidationErrors = lens _vspbrrsValidationErrors (\s a -> s {_vspbrrsValidationErrors = a}) . _Default . _Coerce

-- | True if the behaviors were valid.
vspbrrsValid :: Lens' ValidateSecurityProfileBehaviorsResponse (Maybe Bool)
vspbrrsValid = lens _vspbrrsValid (\s a -> s {_vspbrrsValid = a})

-- | -- | The response status code.
vspbrrsResponseStatus :: Lens' ValidateSecurityProfileBehaviorsResponse Int
vspbrrsResponseStatus = lens _vspbrrsResponseStatus (\s a -> s {_vspbrrsResponseStatus = a})

instance
  NFData
    ValidateSecurityProfileBehaviorsResponse
