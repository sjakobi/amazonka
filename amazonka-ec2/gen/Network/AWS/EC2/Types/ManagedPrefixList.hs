{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ManagedPrefixList
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ManagedPrefixList where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.PrefixListState
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a managed prefix list.
--
--
--
-- /See:/ 'managedPrefixList' smart constructor.
data ManagedPrefixList = ManagedPrefixList'
  { _mplStateMessage ::
      !(Maybe Text),
    _mplOwnerId :: !(Maybe Text),
    _mplMaxEntries :: !(Maybe Int),
    _mplPrefixListName :: !(Maybe Text),
    _mplVersion :: !(Maybe Integer),
    _mplPrefixListId :: !(Maybe Text),
    _mplPrefixListARN :: !(Maybe Text),
    _mplState ::
      !(Maybe PrefixListState),
    _mplTags :: !(Maybe [Tag]),
    _mplAddressFamily :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedPrefixList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mplStateMessage' - The state message.
--
-- * 'mplOwnerId' - The ID of the owner of the prefix list.
--
-- * 'mplMaxEntries' - The maximum number of entries for the prefix list.
--
-- * 'mplPrefixListName' - The name of the prefix list.
--
-- * 'mplVersion' - The version of the prefix list.
--
-- * 'mplPrefixListId' - The ID of the prefix list.
--
-- * 'mplPrefixListARN' - The Amazon Resource Name (ARN) for the prefix list.
--
-- * 'mplState' - The state of the prefix list.
--
-- * 'mplTags' - The tags for the prefix list.
--
-- * 'mplAddressFamily' - The IP address version.
managedPrefixList ::
  ManagedPrefixList
managedPrefixList =
  ManagedPrefixList'
    { _mplStateMessage = Nothing,
      _mplOwnerId = Nothing,
      _mplMaxEntries = Nothing,
      _mplPrefixListName = Nothing,
      _mplVersion = Nothing,
      _mplPrefixListId = Nothing,
      _mplPrefixListARN = Nothing,
      _mplState = Nothing,
      _mplTags = Nothing,
      _mplAddressFamily = Nothing
    }

-- | The state message.
mplStateMessage :: Lens' ManagedPrefixList (Maybe Text)
mplStateMessage = lens _mplStateMessage (\s a -> s {_mplStateMessage = a})

-- | The ID of the owner of the prefix list.
mplOwnerId :: Lens' ManagedPrefixList (Maybe Text)
mplOwnerId = lens _mplOwnerId (\s a -> s {_mplOwnerId = a})

-- | The maximum number of entries for the prefix list.
mplMaxEntries :: Lens' ManagedPrefixList (Maybe Int)
mplMaxEntries = lens _mplMaxEntries (\s a -> s {_mplMaxEntries = a})

-- | The name of the prefix list.
mplPrefixListName :: Lens' ManagedPrefixList (Maybe Text)
mplPrefixListName = lens _mplPrefixListName (\s a -> s {_mplPrefixListName = a})

-- | The version of the prefix list.
mplVersion :: Lens' ManagedPrefixList (Maybe Integer)
mplVersion = lens _mplVersion (\s a -> s {_mplVersion = a})

-- | The ID of the prefix list.
mplPrefixListId :: Lens' ManagedPrefixList (Maybe Text)
mplPrefixListId = lens _mplPrefixListId (\s a -> s {_mplPrefixListId = a})

-- | The Amazon Resource Name (ARN) for the prefix list.
mplPrefixListARN :: Lens' ManagedPrefixList (Maybe Text)
mplPrefixListARN = lens _mplPrefixListARN (\s a -> s {_mplPrefixListARN = a})

-- | The state of the prefix list.
mplState :: Lens' ManagedPrefixList (Maybe PrefixListState)
mplState = lens _mplState (\s a -> s {_mplState = a})

-- | The tags for the prefix list.
mplTags :: Lens' ManagedPrefixList [Tag]
mplTags = lens _mplTags (\s a -> s {_mplTags = a}) . _Default . _Coerce

-- | The IP address version.
mplAddressFamily :: Lens' ManagedPrefixList (Maybe Text)
mplAddressFamily = lens _mplAddressFamily (\s a -> s {_mplAddressFamily = a})

instance FromXML ManagedPrefixList where
  parseXML x =
    ManagedPrefixList'
      <$> (x .@? "stateMessage")
      <*> (x .@? "ownerId")
      <*> (x .@? "maxEntries")
      <*> (x .@? "prefixListName")
      <*> (x .@? "version")
      <*> (x .@? "prefixListId")
      <*> (x .@? "prefixListArn")
      <*> (x .@? "state")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "addressFamily")

instance Hashable ManagedPrefixList

instance NFData ManagedPrefixList
