{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.TagOptionDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.TagOptionDetail where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a TagOption.
--
--
--
-- /See:/ 'tagOptionDetail' smart constructor.
data TagOptionDetail = TagOptionDetail'
  { _todKey ::
      !(Maybe Text),
    _todId :: !(Maybe Text),
    _todActive :: !(Maybe Bool),
    _todOwner :: !(Maybe Text),
    _todValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagOptionDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'todKey' - The TagOption key.
--
-- * 'todId' - The TagOption identifier.
--
-- * 'todActive' - The TagOption active state.
--
-- * 'todOwner' - The AWS account Id of the owner account that created the TagOption.
--
-- * 'todValue' - The TagOption value.
tagOptionDetail ::
  TagOptionDetail
tagOptionDetail =
  TagOptionDetail'
    { _todKey = Nothing,
      _todId = Nothing,
      _todActive = Nothing,
      _todOwner = Nothing,
      _todValue = Nothing
    }

-- | The TagOption key.
todKey :: Lens' TagOptionDetail (Maybe Text)
todKey = lens _todKey (\s a -> s {_todKey = a})

-- | The TagOption identifier.
todId :: Lens' TagOptionDetail (Maybe Text)
todId = lens _todId (\s a -> s {_todId = a})

-- | The TagOption active state.
todActive :: Lens' TagOptionDetail (Maybe Bool)
todActive = lens _todActive (\s a -> s {_todActive = a})

-- | The AWS account Id of the owner account that created the TagOption.
todOwner :: Lens' TagOptionDetail (Maybe Text)
todOwner = lens _todOwner (\s a -> s {_todOwner = a})

-- | The TagOption value.
todValue :: Lens' TagOptionDetail (Maybe Text)
todValue = lens _todValue (\s a -> s {_todValue = a})

instance FromJSON TagOptionDetail where
  parseJSON =
    withObject
      "TagOptionDetail"
      ( \x ->
          TagOptionDetail'
            <$> (x .:? "Key")
            <*> (x .:? "Id")
            <*> (x .:? "Active")
            <*> (x .:? "Owner")
            <*> (x .:? "Value")
      )

instance Hashable TagOptionDetail

instance NFData TagOptionDetail
