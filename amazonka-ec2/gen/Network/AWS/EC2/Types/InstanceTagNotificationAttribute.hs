{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceTagNotificationAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceTagNotificationAttribute where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the registered tag keys for the current Region.
--
--
--
-- /See:/ 'instanceTagNotificationAttribute' smart constructor.
data InstanceTagNotificationAttribute = InstanceTagNotificationAttribute'
  { _itnaInstanceTagKeys ::
      !( Maybe
           [Text]
       ),
    _itnaIncludeAllTagsOfInstance ::
      !( Maybe
           Bool
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InstanceTagNotificationAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itnaInstanceTagKeys' - The registered tag keys.
--
-- * 'itnaIncludeAllTagsOfInstance' - Indicates wheter all tag keys in the current Region are registered to appear in scheduled event notifications. @true@ indicates that all tag keys in the current Region are registered.
instanceTagNotificationAttribute ::
  InstanceTagNotificationAttribute
instanceTagNotificationAttribute =
  InstanceTagNotificationAttribute'
    { _itnaInstanceTagKeys =
        Nothing,
      _itnaIncludeAllTagsOfInstance = Nothing
    }

-- | The registered tag keys.
itnaInstanceTagKeys :: Lens' InstanceTagNotificationAttribute [Text]
itnaInstanceTagKeys = lens _itnaInstanceTagKeys (\s a -> s {_itnaInstanceTagKeys = a}) . _Default . _Coerce

-- | Indicates wheter all tag keys in the current Region are registered to appear in scheduled event notifications. @true@ indicates that all tag keys in the current Region are registered.
itnaIncludeAllTagsOfInstance :: Lens' InstanceTagNotificationAttribute (Maybe Bool)
itnaIncludeAllTagsOfInstance = lens _itnaIncludeAllTagsOfInstance (\s a -> s {_itnaIncludeAllTagsOfInstance = a})

instance FromXML InstanceTagNotificationAttribute where
  parseXML x =
    InstanceTagNotificationAttribute'
      <$> ( x .@? "instanceTagKeySet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "includeAllTagsOfInstance")

instance Hashable InstanceTagNotificationAttribute

instance NFData InstanceTagNotificationAttribute
