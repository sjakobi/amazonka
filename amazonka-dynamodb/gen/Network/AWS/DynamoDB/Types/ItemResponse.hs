{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ItemResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ItemResponse where

import Network.AWS.DynamoDB.Types.AttributeValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details for the requested item.
--
--
--
-- /See:/ 'itemResponse' smart constructor.
newtype ItemResponse = ItemResponse'
  { _irItem ::
      Maybe (Map Text AttributeValue)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irItem' - Map of attribute data consisting of the data type and attribute value.
itemResponse ::
  ItemResponse
itemResponse = ItemResponse' {_irItem = Nothing}

-- | Map of attribute data consisting of the data type and attribute value.
irItem :: Lens' ItemResponse (HashMap Text AttributeValue)
irItem = lens _irItem (\s a -> s {_irItem = a}) . _Default . _Map

instance FromJSON ItemResponse where
  parseJSON =
    withObject
      "ItemResponse"
      (\x -> ItemResponse' <$> (x .:? "Item" .!= mempty))

instance Hashable ItemResponse

instance NFData ItemResponse
