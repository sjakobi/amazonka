{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.Account
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.Account where

import Network.AWS.Lens
import Network.AWS.Organizations.Types.AccountJoinedMethod
import Network.AWS.Organizations.Types.AccountStatus
import Network.AWS.Prelude

-- | Contains information about an AWS account that is a member of an organization.
--
--
--
-- /See:/ 'account' smart constructor.
data Account = Account'
  { _aStatus ::
      !(Maybe AccountStatus),
    _aJoinedMethod :: !(Maybe AccountJoinedMethod),
    _aARN :: !(Maybe Text),
    _aJoinedTimestamp :: !(Maybe POSIX),
    _aId :: !(Maybe Text),
    _aName :: !(Maybe (Sensitive Text)),
    _aEmail :: !(Maybe (Sensitive Text))
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aStatus' - The status of the account in the organization.
--
-- * 'aJoinedMethod' - The method by which the account joined the organization.
--
-- * 'aARN' - The Amazon Resource Name (ARN) of the account. For more information about ARNs in Organizations, see <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies ARN Formats Supported by Organizations> in the /AWS Service Authorization Reference/ .
--
-- * 'aJoinedTimestamp' - The date the account became a part of the organization.
--
-- * 'aId' - The unique identifier (ID) of the account. The <http://wikipedia.org/wiki/regex regex pattern> for an account ID string requires exactly 12 digits.
--
-- * 'aName' - The friendly name of the account. The <http://wikipedia.org/wiki/regex regex pattern> that is used to validate this parameter is a string of any of the characters in the ASCII character range.
--
-- * 'aEmail' - The email address associated with the AWS account. The <http://wikipedia.org/wiki/regex regex pattern> for this parameter is a string of characters that represents a standard internet email address.
account ::
  Account
account =
  Account'
    { _aStatus = Nothing,
      _aJoinedMethod = Nothing,
      _aARN = Nothing,
      _aJoinedTimestamp = Nothing,
      _aId = Nothing,
      _aName = Nothing,
      _aEmail = Nothing
    }

-- | The status of the account in the organization.
aStatus :: Lens' Account (Maybe AccountStatus)
aStatus = lens _aStatus (\s a -> s {_aStatus = a})

-- | The method by which the account joined the organization.
aJoinedMethod :: Lens' Account (Maybe AccountJoinedMethod)
aJoinedMethod = lens _aJoinedMethod (\s a -> s {_aJoinedMethod = a})

-- | The Amazon Resource Name (ARN) of the account. For more information about ARNs in Organizations, see <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies ARN Formats Supported by Organizations> in the /AWS Service Authorization Reference/ .
aARN :: Lens' Account (Maybe Text)
aARN = lens _aARN (\s a -> s {_aARN = a})

-- | The date the account became a part of the organization.
aJoinedTimestamp :: Lens' Account (Maybe UTCTime)
aJoinedTimestamp = lens _aJoinedTimestamp (\s a -> s {_aJoinedTimestamp = a}) . mapping _Time

-- | The unique identifier (ID) of the account. The <http://wikipedia.org/wiki/regex regex pattern> for an account ID string requires exactly 12 digits.
aId :: Lens' Account (Maybe Text)
aId = lens _aId (\s a -> s {_aId = a})

-- | The friendly name of the account. The <http://wikipedia.org/wiki/regex regex pattern> that is used to validate this parameter is a string of any of the characters in the ASCII character range.
aName :: Lens' Account (Maybe Text)
aName = lens _aName (\s a -> s {_aName = a}) . mapping _Sensitive

-- | The email address associated with the AWS account. The <http://wikipedia.org/wiki/regex regex pattern> for this parameter is a string of characters that represents a standard internet email address.
aEmail :: Lens' Account (Maybe Text)
aEmail = lens _aEmail (\s a -> s {_aEmail = a}) . mapping _Sensitive

instance FromJSON Account where
  parseJSON =
    withObject
      "Account"
      ( \x ->
          Account'
            <$> (x .:? "Status")
            <*> (x .:? "JoinedMethod")
            <*> (x .:? "Arn")
            <*> (x .:? "JoinedTimestamp")
            <*> (x .:? "Id")
            <*> (x .:? "Name")
            <*> (x .:? "Email")
      )

instance Hashable Account

instance NFData Account
