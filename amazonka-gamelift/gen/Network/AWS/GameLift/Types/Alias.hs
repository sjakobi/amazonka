{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.Alias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.Alias where

import Network.AWS.GameLift.Types.RoutingStrategy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Properties that describe an alias resource.
--
--
--     * 'CreateAlias'
--
--     * 'ListAliases'
--
--     * 'DescribeAlias'
--
--     * 'UpdateAlias'
--
--     * 'DeleteAlias'
--
--     * 'ResolveAlias'
--
--
--
--
-- /See:/ 'alias' smart constructor.
data Alias = Alias'
  { _aRoutingStrategy ::
      !(Maybe RoutingStrategy),
    _aCreationTime :: !(Maybe POSIX),
    _aName :: !(Maybe Text),
    _aDescription :: !(Maybe Text),
    _aAliasARN :: !(Maybe Text),
    _aAliasId :: !(Maybe Text),
    _aLastUpdatedTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Alias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aRoutingStrategy' - The routing configuration, including routing type and fleet target, for the alias.
--
-- * 'aCreationTime' - A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
--
-- * 'aName' - A descriptive label that is associated with an alias. Alias names do not need to be unique.
--
-- * 'aDescription' - A human-readable description of an alias.
--
-- * 'aAliasARN' - Amazon Resource Name (<https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN> ) that is assigned to a GameLift alias resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift alias ARN, the resource ID matches the alias ID value.
--
-- * 'aAliasId' - A unique identifier for an alias. Alias IDs are unique within a Region.
--
-- * 'aLastUpdatedTime' - The time that this data object was last modified. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
alias ::
  Alias
alias =
  Alias'
    { _aRoutingStrategy = Nothing,
      _aCreationTime = Nothing,
      _aName = Nothing,
      _aDescription = Nothing,
      _aAliasARN = Nothing,
      _aAliasId = Nothing,
      _aLastUpdatedTime = Nothing
    }

-- | The routing configuration, including routing type and fleet target, for the alias.
aRoutingStrategy :: Lens' Alias (Maybe RoutingStrategy)
aRoutingStrategy = lens _aRoutingStrategy (\s a -> s {_aRoutingStrategy = a})

-- | A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
aCreationTime :: Lens' Alias (Maybe UTCTime)
aCreationTime = lens _aCreationTime (\s a -> s {_aCreationTime = a}) . mapping _Time

-- | A descriptive label that is associated with an alias. Alias names do not need to be unique.
aName :: Lens' Alias (Maybe Text)
aName = lens _aName (\s a -> s {_aName = a})

-- | A human-readable description of an alias.
aDescription :: Lens' Alias (Maybe Text)
aDescription = lens _aDescription (\s a -> s {_aDescription = a})

-- | Amazon Resource Name (<https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN> ) that is assigned to a GameLift alias resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift alias ARN, the resource ID matches the alias ID value.
aAliasARN :: Lens' Alias (Maybe Text)
aAliasARN = lens _aAliasARN (\s a -> s {_aAliasARN = a})

-- | A unique identifier for an alias. Alias IDs are unique within a Region.
aAliasId :: Lens' Alias (Maybe Text)
aAliasId = lens _aAliasId (\s a -> s {_aAliasId = a})

-- | The time that this data object was last modified. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
aLastUpdatedTime :: Lens' Alias (Maybe UTCTime)
aLastUpdatedTime = lens _aLastUpdatedTime (\s a -> s {_aLastUpdatedTime = a}) . mapping _Time

instance FromJSON Alias where
  parseJSON =
    withObject
      "Alias"
      ( \x ->
          Alias'
            <$> (x .:? "RoutingStrategy")
            <*> (x .:? "CreationTime")
            <*> (x .:? "Name")
            <*> (x .:? "Description")
            <*> (x .:? "AliasArn")
            <*> (x .:? "AliasId")
            <*> (x .:? "LastUpdatedTime")
      )

instance Hashable Alias

instance NFData Alias
