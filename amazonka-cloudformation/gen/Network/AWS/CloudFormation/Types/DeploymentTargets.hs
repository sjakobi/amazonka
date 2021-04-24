{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.DeploymentTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.DeploymentTargets where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | [Service-managed permissions] The AWS Organizations accounts to which StackSets deploys. StackSets does not deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization.
--
--
-- For update operations, you can specify either @Accounts@ or @OrganizationalUnitIds@ . For create and delete operations, specify @OrganizationalUnitIds@ .
--
--
-- /See:/ 'deploymentTargets' smart constructor.
data DeploymentTargets = DeploymentTargets'
  { _dtOrganizationalUnitIds ::
      !(Maybe [Text]),
    _dtAccounts :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeploymentTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtOrganizationalUnitIds' - The organization root ID or organizational unit (OU) IDs to which StackSets deploys.
--
-- * 'dtAccounts' - The names of one or more AWS accounts for which you want to deploy stack set updates.
deploymentTargets ::
  DeploymentTargets
deploymentTargets =
  DeploymentTargets'
    { _dtOrganizationalUnitIds =
        Nothing,
      _dtAccounts = Nothing
    }

-- | The organization root ID or organizational unit (OU) IDs to which StackSets deploys.
dtOrganizationalUnitIds :: Lens' DeploymentTargets [Text]
dtOrganizationalUnitIds = lens _dtOrganizationalUnitIds (\s a -> s {_dtOrganizationalUnitIds = a}) . _Default . _Coerce

-- | The names of one or more AWS accounts for which you want to deploy stack set updates.
dtAccounts :: Lens' DeploymentTargets [Text]
dtAccounts = lens _dtAccounts (\s a -> s {_dtAccounts = a}) . _Default . _Coerce

instance FromXML DeploymentTargets where
  parseXML x =
    DeploymentTargets'
      <$> ( x .@? "OrganizationalUnitIds" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> ( x .@? "Accounts" .!@ mempty
              >>= may (parseXMLList "member")
          )

instance Hashable DeploymentTargets

instance NFData DeploymentTargets

instance ToQuery DeploymentTargets where
  toQuery DeploymentTargets' {..} =
    mconcat
      [ "OrganizationalUnitIds"
          =: toQuery
            (toQueryList "member" <$> _dtOrganizationalUnitIds),
        "Accounts"
          =: toQuery (toQueryList "member" <$> _dtAccounts)
      ]
