{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EmailChannelRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EmailChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the status and settings of the email channel for an application.
--
--
--
-- /See:/ 'emailChannelRequest' smart constructor.
data EmailChannelRequest = EmailChannelRequest'
  { _emaRoleARN ::
      !(Maybe Text),
    _emaEnabled :: !(Maybe Bool),
    _emaConfigurationSet ::
      !(Maybe Text),
    _emaFromAddress :: !Text,
    _emaIdentity :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EmailChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'emaRoleARN' - The ARN of the AWS Identity and Access Management (IAM) role that you want Amazon Pinpoint to use when it submits email-related event data for the channel.
--
-- * 'emaEnabled' - Specifies whether to enable the email channel for the application.
--
-- * 'emaConfigurationSet' - The <https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html Amazon SES configuration set> that you want to apply to messages that you send through the channel.
--
-- * 'emaFromAddress' - The verified email address that you want to send email from when you send email through the channel.
--
-- * 'emaIdentity' - The Amazon Resource Name (ARN) of the identity, verified with Amazon Simple Email Service (Amazon SES), that you want to use when you send email through the channel.
emailChannelRequest ::
  -- | 'emaFromAddress'
  Text ->
  -- | 'emaIdentity'
  Text ->
  EmailChannelRequest
emailChannelRequest pFromAddress_ pIdentity_ =
  EmailChannelRequest'
    { _emaRoleARN = Nothing,
      _emaEnabled = Nothing,
      _emaConfigurationSet = Nothing,
      _emaFromAddress = pFromAddress_,
      _emaIdentity = pIdentity_
    }

-- | The ARN of the AWS Identity and Access Management (IAM) role that you want Amazon Pinpoint to use when it submits email-related event data for the channel.
emaRoleARN :: Lens' EmailChannelRequest (Maybe Text)
emaRoleARN = lens _emaRoleARN (\s a -> s {_emaRoleARN = a})

-- | Specifies whether to enable the email channel for the application.
emaEnabled :: Lens' EmailChannelRequest (Maybe Bool)
emaEnabled = lens _emaEnabled (\s a -> s {_emaEnabled = a})

-- | The <https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html Amazon SES configuration set> that you want to apply to messages that you send through the channel.
emaConfigurationSet :: Lens' EmailChannelRequest (Maybe Text)
emaConfigurationSet = lens _emaConfigurationSet (\s a -> s {_emaConfigurationSet = a})

-- | The verified email address that you want to send email from when you send email through the channel.
emaFromAddress :: Lens' EmailChannelRequest Text
emaFromAddress = lens _emaFromAddress (\s a -> s {_emaFromAddress = a})

-- | The Amazon Resource Name (ARN) of the identity, verified with Amazon Simple Email Service (Amazon SES), that you want to use when you send email through the channel.
emaIdentity :: Lens' EmailChannelRequest Text
emaIdentity = lens _emaIdentity (\s a -> s {_emaIdentity = a})

instance Hashable EmailChannelRequest

instance NFData EmailChannelRequest

instance ToJSON EmailChannelRequest where
  toJSON EmailChannelRequest' {..} =
    object
      ( catMaybes
          [ ("RoleArn" .=) <$> _emaRoleARN,
            ("Enabled" .=) <$> _emaEnabled,
            ("ConfigurationSet" .=) <$> _emaConfigurationSet,
            Just ("FromAddress" .= _emaFromAddress),
            Just ("Identity" .= _emaIdentity)
          ]
      )
