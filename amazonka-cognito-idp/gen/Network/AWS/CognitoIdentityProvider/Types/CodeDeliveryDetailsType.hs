{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.CodeDeliveryDetailsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.CodeDeliveryDetailsType where

import Network.AWS.CognitoIdentityProvider.Types.DeliveryMediumType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The code delivery details being returned from the server.
--
--
--
-- /See:/ 'codeDeliveryDetailsType' smart constructor.
data CodeDeliveryDetailsType = CodeDeliveryDetailsType'
  { _cddtDeliveryMedium ::
      !( Maybe
           DeliveryMediumType
       ),
    _cddtAttributeName ::
      !(Maybe Text),
    _cddtDestination ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CodeDeliveryDetailsType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddtDeliveryMedium' - The delivery medium (email message or phone number).
--
-- * 'cddtAttributeName' - The attribute name.
--
-- * 'cddtDestination' - The destination for the code delivery details.
codeDeliveryDetailsType ::
  CodeDeliveryDetailsType
codeDeliveryDetailsType =
  CodeDeliveryDetailsType'
    { _cddtDeliveryMedium =
        Nothing,
      _cddtAttributeName = Nothing,
      _cddtDestination = Nothing
    }

-- | The delivery medium (email message or phone number).
cddtDeliveryMedium :: Lens' CodeDeliveryDetailsType (Maybe DeliveryMediumType)
cddtDeliveryMedium = lens _cddtDeliveryMedium (\s a -> s {_cddtDeliveryMedium = a})

-- | The attribute name.
cddtAttributeName :: Lens' CodeDeliveryDetailsType (Maybe Text)
cddtAttributeName = lens _cddtAttributeName (\s a -> s {_cddtAttributeName = a})

-- | The destination for the code delivery details.
cddtDestination :: Lens' CodeDeliveryDetailsType (Maybe Text)
cddtDestination = lens _cddtDestination (\s a -> s {_cddtDestination = a})

instance FromJSON CodeDeliveryDetailsType where
  parseJSON =
    withObject
      "CodeDeliveryDetailsType"
      ( \x ->
          CodeDeliveryDetailsType'
            <$> (x .:? "DeliveryMedium")
            <*> (x .:? "AttributeName")
            <*> (x .:? "Destination")
      )

instance Hashable CodeDeliveryDetailsType

instance NFData CodeDeliveryDetailsType
