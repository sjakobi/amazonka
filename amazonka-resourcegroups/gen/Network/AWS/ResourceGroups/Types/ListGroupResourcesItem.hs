{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.ListGroupResourcesItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.ListGroupResourcesItem where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ResourceGroups.Types.ResourceIdentifier
import Network.AWS.ResourceGroups.Types.ResourceStatus

-- | A structure returned by the 'ListGroupResources' operation that contains identity and group membership status information for one of the resources in the group.
--
--
--
-- /See:/ 'listGroupResourcesItem' smart constructor.
data ListGroupResourcesItem = ListGroupResourcesItem'
  { _lgriStatus ::
      !(Maybe ResourceStatus),
    _lgriIdentifier ::
      !( Maybe
           ResourceIdentifier
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

-- | Creates a value of 'ListGroupResourcesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgriStatus' - A structure that contains the status of this resource's membership in the group.
--
-- * 'lgriIdentifier' - Undocumented member.
listGroupResourcesItem ::
  ListGroupResourcesItem
listGroupResourcesItem =
  ListGroupResourcesItem'
    { _lgriStatus = Nothing,
      _lgriIdentifier = Nothing
    }

-- | A structure that contains the status of this resource's membership in the group.
lgriStatus :: Lens' ListGroupResourcesItem (Maybe ResourceStatus)
lgriStatus = lens _lgriStatus (\s a -> s {_lgriStatus = a})

-- | Undocumented member.
lgriIdentifier :: Lens' ListGroupResourcesItem (Maybe ResourceIdentifier)
lgriIdentifier = lens _lgriIdentifier (\s a -> s {_lgriIdentifier = a})

instance FromJSON ListGroupResourcesItem where
  parseJSON =
    withObject
      "ListGroupResourcesItem"
      ( \x ->
          ListGroupResourcesItem'
            <$> (x .:? "Status") <*> (x .:? "Identifier")
      )

instance Hashable ListGroupResourcesItem

instance NFData ListGroupResourcesItem
