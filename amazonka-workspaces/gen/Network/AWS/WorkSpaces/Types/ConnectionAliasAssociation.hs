{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.ConnectionAliasAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.ConnectionAliasAssociation where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkSpaces.Types.AssociationStatus

-- | Describes a connection alias association that is used for cross-Region redirection. For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html Cross-Region Redirection for Amazon WorkSpaces> .
--
--
--
-- /See:/ 'connectionAliasAssociation' smart constructor.
data ConnectionAliasAssociation = ConnectionAliasAssociation'
  { _caaResourceId ::
      !(Maybe Text),
    _caaConnectionIdentifier ::
      !(Maybe Text),
    _caaAssociatedAccountId ::
      !(Maybe Text),
    _caaAssociationStatus ::
      !( Maybe
           AssociationStatus
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

-- | Creates a value of 'ConnectionAliasAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caaResourceId' - The identifier of the directory associated with a connection alias.
--
-- * 'caaConnectionIdentifier' - The identifier of the connection alias association. You use the connection identifier in the DNS TXT record when you're configuring your DNS routing policies.
--
-- * 'caaAssociatedAccountId' - The identifier of the AWS account that associated the connection alias with a directory.
--
-- * 'caaAssociationStatus' - The association status of the connection alias.
connectionAliasAssociation ::
  ConnectionAliasAssociation
connectionAliasAssociation =
  ConnectionAliasAssociation'
    { _caaResourceId =
        Nothing,
      _caaConnectionIdentifier = Nothing,
      _caaAssociatedAccountId = Nothing,
      _caaAssociationStatus = Nothing
    }

-- | The identifier of the directory associated with a connection alias.
caaResourceId :: Lens' ConnectionAliasAssociation (Maybe Text)
caaResourceId = lens _caaResourceId (\s a -> s {_caaResourceId = a})

-- | The identifier of the connection alias association. You use the connection identifier in the DNS TXT record when you're configuring your DNS routing policies.
caaConnectionIdentifier :: Lens' ConnectionAliasAssociation (Maybe Text)
caaConnectionIdentifier = lens _caaConnectionIdentifier (\s a -> s {_caaConnectionIdentifier = a})

-- | The identifier of the AWS account that associated the connection alias with a directory.
caaAssociatedAccountId :: Lens' ConnectionAliasAssociation (Maybe Text)
caaAssociatedAccountId = lens _caaAssociatedAccountId (\s a -> s {_caaAssociatedAccountId = a})

-- | The association status of the connection alias.
caaAssociationStatus :: Lens' ConnectionAliasAssociation (Maybe AssociationStatus)
caaAssociationStatus = lens _caaAssociationStatus (\s a -> s {_caaAssociationStatus = a})

instance FromJSON ConnectionAliasAssociation where
  parseJSON =
    withObject
      "ConnectionAliasAssociation"
      ( \x ->
          ConnectionAliasAssociation'
            <$> (x .:? "ResourceId")
            <*> (x .:? "ConnectionIdentifier")
            <*> (x .:? "AssociatedAccountId")
            <*> (x .:? "AssociationStatus")
      )

instance Hashable ConnectionAliasAssociation

instance NFData ConnectionAliasAssociation
