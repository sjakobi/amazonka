{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.NamespaceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.NamespaceSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53AutoNaming.Types.NamespaceProperties
import Network.AWS.Route53AutoNaming.Types.NamespaceType

-- | A complex type that contains information about a namespace.
--
--
--
-- /See:/ 'namespaceSummary' smart constructor.
data NamespaceSummary = NamespaceSummary'
  { _nsCreateDate ::
      !(Maybe POSIX),
    _nsARN :: !(Maybe Text),
    _nsId :: !(Maybe Text),
    _nsName :: !(Maybe Text),
    _nsProperties ::
      !(Maybe NamespaceProperties),
    _nsServiceCount :: !(Maybe Int),
    _nsDescription :: !(Maybe Text),
    _nsType :: !(Maybe NamespaceType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NamespaceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsCreateDate' - The date and time that the namespace was created.
--
-- * 'nsARN' - The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the namespace when you create it.
--
-- * 'nsId' - The ID of the namespace.
--
-- * 'nsName' - The name of the namespace. When you create a namespace, AWS Cloud Map automatically creates a Route 53 hosted zone that has the same name as the namespace.
--
-- * 'nsProperties' - Undocumented member.
--
-- * 'nsServiceCount' - The number of services that were created using the namespace.
--
-- * 'nsDescription' - A description for the namespace.
--
-- * 'nsType' - The type of the namespace, either public or private.
namespaceSummary ::
  NamespaceSummary
namespaceSummary =
  NamespaceSummary'
    { _nsCreateDate = Nothing,
      _nsARN = Nothing,
      _nsId = Nothing,
      _nsName = Nothing,
      _nsProperties = Nothing,
      _nsServiceCount = Nothing,
      _nsDescription = Nothing,
      _nsType = Nothing
    }

-- | The date and time that the namespace was created.
nsCreateDate :: Lens' NamespaceSummary (Maybe UTCTime)
nsCreateDate = lens _nsCreateDate (\s a -> s {_nsCreateDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the namespace when you create it.
nsARN :: Lens' NamespaceSummary (Maybe Text)
nsARN = lens _nsARN (\s a -> s {_nsARN = a})

-- | The ID of the namespace.
nsId :: Lens' NamespaceSummary (Maybe Text)
nsId = lens _nsId (\s a -> s {_nsId = a})

-- | The name of the namespace. When you create a namespace, AWS Cloud Map automatically creates a Route 53 hosted zone that has the same name as the namespace.
nsName :: Lens' NamespaceSummary (Maybe Text)
nsName = lens _nsName (\s a -> s {_nsName = a})

-- | Undocumented member.
nsProperties :: Lens' NamespaceSummary (Maybe NamespaceProperties)
nsProperties = lens _nsProperties (\s a -> s {_nsProperties = a})

-- | The number of services that were created using the namespace.
nsServiceCount :: Lens' NamespaceSummary (Maybe Int)
nsServiceCount = lens _nsServiceCount (\s a -> s {_nsServiceCount = a})

-- | A description for the namespace.
nsDescription :: Lens' NamespaceSummary (Maybe Text)
nsDescription = lens _nsDescription (\s a -> s {_nsDescription = a})

-- | The type of the namespace, either public or private.
nsType :: Lens' NamespaceSummary (Maybe NamespaceType)
nsType = lens _nsType (\s a -> s {_nsType = a})

instance FromJSON NamespaceSummary where
  parseJSON =
    withObject
      "NamespaceSummary"
      ( \x ->
          NamespaceSummary'
            <$> (x .:? "CreateDate")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "Name")
            <*> (x .:? "Properties")
            <*> (x .:? "ServiceCount")
            <*> (x .:? "Description")
            <*> (x .:? "Type")
      )

instance Hashable NamespaceSummary

instance NFData NamespaceSummary
