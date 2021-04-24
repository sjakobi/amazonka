{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.ConnectionAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.ConnectionAlias where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkSpaces.Types.ConnectionAliasAssociation
import Network.AWS.WorkSpaces.Types.ConnectionAliasState

-- | Describes a connection alias. Connection aliases are used for cross-Region redirection. For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html Cross-Region Redirection for Amazon WorkSpaces> .
--
--
--
-- /See:/ 'connectionAlias' smart constructor.
data ConnectionAlias = ConnectionAlias'
  { _caState ::
      !(Maybe ConnectionAliasState),
    _caAliasId :: !(Maybe Text),
    _caConnectionString :: !(Maybe Text),
    _caOwnerAccountId :: !(Maybe Text),
    _caAssociations ::
      !( Maybe
           (List1 ConnectionAliasAssociation)
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConnectionAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caState' - The current state of the connection alias.
--
-- * 'caAliasId' - The identifier of the connection alias.
--
-- * 'caConnectionString' - The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as @www.example.com@ .
--
-- * 'caOwnerAccountId' - The identifier of the AWS account that owns the connection alias.
--
-- * 'caAssociations' - The association status of the connection alias.
connectionAlias ::
  ConnectionAlias
connectionAlias =
  ConnectionAlias'
    { _caState = Nothing,
      _caAliasId = Nothing,
      _caConnectionString = Nothing,
      _caOwnerAccountId = Nothing,
      _caAssociations = Nothing
    }

-- | The current state of the connection alias.
caState :: Lens' ConnectionAlias (Maybe ConnectionAliasState)
caState = lens _caState (\s a -> s {_caState = a})

-- | The identifier of the connection alias.
caAliasId :: Lens' ConnectionAlias (Maybe Text)
caAliasId = lens _caAliasId (\s a -> s {_caAliasId = a})

-- | The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as @www.example.com@ .
caConnectionString :: Lens' ConnectionAlias (Maybe Text)
caConnectionString = lens _caConnectionString (\s a -> s {_caConnectionString = a})

-- | The identifier of the AWS account that owns the connection alias.
caOwnerAccountId :: Lens' ConnectionAlias (Maybe Text)
caOwnerAccountId = lens _caOwnerAccountId (\s a -> s {_caOwnerAccountId = a})

-- | The association status of the connection alias.
caAssociations :: Lens' ConnectionAlias (Maybe (NonEmpty ConnectionAliasAssociation))
caAssociations = lens _caAssociations (\s a -> s {_caAssociations = a}) . mapping _List1

instance FromJSON ConnectionAlias where
  parseJSON =
    withObject
      "ConnectionAlias"
      ( \x ->
          ConnectionAlias'
            <$> (x .:? "State")
            <*> (x .:? "AliasId")
            <*> (x .:? "ConnectionString")
            <*> (x .:? "OwnerAccountId")
            <*> (x .:? "Associations")
      )

instance Hashable ConnectionAlias

instance NFData ConnectionAlias
