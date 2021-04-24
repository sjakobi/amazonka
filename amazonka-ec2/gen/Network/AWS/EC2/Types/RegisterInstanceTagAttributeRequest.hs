{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.RegisterInstanceTagAttributeRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RegisterInstanceTagAttributeRequest where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the tag keys to register for the current Region. You can either specify individual tag keys or register all tag keys in the current Region. You must specify either @IncludeAllTagsOfInstance@ or @InstanceTagKeys@ in the request
--
--
--
-- /See:/ 'registerInstanceTagAttributeRequest' smart constructor.
data RegisterInstanceTagAttributeRequest = RegisterInstanceTagAttributeRequest'
  { _ritarInstanceTagKeys ::
      !( Maybe
           [Text]
       ),
    _ritarIncludeAllTagsOfInstance ::
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

-- | Creates a value of 'RegisterInstanceTagAttributeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ritarInstanceTagKeys' - The tag keys to register.
--
-- * 'ritarIncludeAllTagsOfInstance' - Indicates whether to register all tag keys in the current Region. Specify @true@ to register all tag keys.
registerInstanceTagAttributeRequest ::
  RegisterInstanceTagAttributeRequest
registerInstanceTagAttributeRequest =
  RegisterInstanceTagAttributeRequest'
    { _ritarInstanceTagKeys =
        Nothing,
      _ritarIncludeAllTagsOfInstance =
        Nothing
    }

-- | The tag keys to register.
ritarInstanceTagKeys :: Lens' RegisterInstanceTagAttributeRequest [Text]
ritarInstanceTagKeys = lens _ritarInstanceTagKeys (\s a -> s {_ritarInstanceTagKeys = a}) . _Default . _Coerce

-- | Indicates whether to register all tag keys in the current Region. Specify @true@ to register all tag keys.
ritarIncludeAllTagsOfInstance :: Lens' RegisterInstanceTagAttributeRequest (Maybe Bool)
ritarIncludeAllTagsOfInstance = lens _ritarIncludeAllTagsOfInstance (\s a -> s {_ritarIncludeAllTagsOfInstance = a})

instance Hashable RegisterInstanceTagAttributeRequest

instance NFData RegisterInstanceTagAttributeRequest

instance ToQuery RegisterInstanceTagAttributeRequest where
  toQuery RegisterInstanceTagAttributeRequest' {..} =
    mconcat
      [ toQuery
          ( toQueryList "InstanceTagKey"
              <$> _ritarInstanceTagKeys
          ),
        "IncludeAllTagsOfInstance"
          =: _ritarIncludeAllTagsOfInstance
      ]
