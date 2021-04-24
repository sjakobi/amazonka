{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.OrganizationalUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.OrganizationalUnit where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about an organizational unit (OU). An OU is a container of AWS accounts within a root of an organization. Policies that are attached to an OU apply to all accounts contained in that OU and in any child OUs.
--
--
--
-- /See:/ 'organizationalUnit' smart constructor.
data OrganizationalUnit = OrganizationalUnit'
  { _ouARN ::
      !(Maybe Text),
    _ouId :: !(Maybe Text),
    _ouName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrganizationalUnit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouARN' - The Amazon Resource Name (ARN) of this OU. For more information about ARNs in Organizations, see <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies ARN Formats Supported by Organizations> in the /AWS Service Authorization Reference/ .
--
-- * 'ouId' - The unique identifier (ID) associated with this OU. The <http://wikipedia.org/wiki/regex regex pattern> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters or digits.
--
-- * 'ouName' - The friendly name of this OU. The <http://wikipedia.org/wiki/regex regex pattern> that is used to validate this parameter is a string of any of the characters in the ASCII character range.
organizationalUnit ::
  OrganizationalUnit
organizationalUnit =
  OrganizationalUnit'
    { _ouARN = Nothing,
      _ouId = Nothing,
      _ouName = Nothing
    }

-- | The Amazon Resource Name (ARN) of this OU. For more information about ARNs in Organizations, see <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies ARN Formats Supported by Organizations> in the /AWS Service Authorization Reference/ .
ouARN :: Lens' OrganizationalUnit (Maybe Text)
ouARN = lens _ouARN (\s a -> s {_ouARN = a})

-- | The unique identifier (ID) associated with this OU. The <http://wikipedia.org/wiki/regex regex pattern> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters or digits.
ouId :: Lens' OrganizationalUnit (Maybe Text)
ouId = lens _ouId (\s a -> s {_ouId = a})

-- | The friendly name of this OU. The <http://wikipedia.org/wiki/regex regex pattern> that is used to validate this parameter is a string of any of the characters in the ASCII character range.
ouName :: Lens' OrganizationalUnit (Maybe Text)
ouName = lens _ouName (\s a -> s {_ouName = a})

instance FromJSON OrganizationalUnit where
  parseJSON =
    withObject
      "OrganizationalUnit"
      ( \x ->
          OrganizationalUnit'
            <$> (x .:? "Arn") <*> (x .:? "Id") <*> (x .:? "Name")
      )

instance Hashable OrganizationalUnit

instance NFData OrganizationalUnit
