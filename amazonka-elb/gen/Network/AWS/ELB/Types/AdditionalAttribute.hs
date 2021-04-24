{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.Types.AdditionalAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.AdditionalAttribute where

import Network.AWS.ELB.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about additional load balancer attributes.
--
--
--
-- /See:/ 'additionalAttribute' smart constructor.
data AdditionalAttribute = AdditionalAttribute'
  { _aaKey ::
      !(Maybe Text),
    _aaValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdditionalAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaKey' - The name of the attribute. The following attribute is supported.     * @elb.http.desyncmitigationmode@ - Determines how the load balancer handles requests that might pose a security risk to your application. The possible values are @monitor@ , @defensive@ , and @strictest@ . The default is @defensive@ .
--
-- * 'aaValue' - This value of the attribute.
additionalAttribute ::
  AdditionalAttribute
additionalAttribute =
  AdditionalAttribute'
    { _aaKey = Nothing,
      _aaValue = Nothing
    }

-- | The name of the attribute. The following attribute is supported.     * @elb.http.desyncmitigationmode@ - Determines how the load balancer handles requests that might pose a security risk to your application. The possible values are @monitor@ , @defensive@ , and @strictest@ . The default is @defensive@ .
aaKey :: Lens' AdditionalAttribute (Maybe Text)
aaKey = lens _aaKey (\s a -> s {_aaKey = a})

-- | This value of the attribute.
aaValue :: Lens' AdditionalAttribute (Maybe Text)
aaValue = lens _aaValue (\s a -> s {_aaValue = a})

instance FromXML AdditionalAttribute where
  parseXML x =
    AdditionalAttribute'
      <$> (x .@? "Key") <*> (x .@? "Value")

instance Hashable AdditionalAttribute

instance NFData AdditionalAttribute

instance ToQuery AdditionalAttribute where
  toQuery AdditionalAttribute' {..} =
    mconcat ["Key" =: _aaKey, "Value" =: _aaValue]
