{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.RecipientDsnFields
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.RecipientDsnFields where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SES.Types.DsnAction
import Network.AWS.SES.Types.ExtensionField

-- | Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.
--
--
-- For information about receiving email through Amazon SES, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html Amazon SES Developer Guide> .
--
--
-- /See:/ 'recipientDsnFields' smart constructor.
data RecipientDsnFields = RecipientDsnFields'
  { _rdfRemoteMta ::
      !(Maybe Text),
    _rdfLastAttemptDate ::
      !(Maybe ISO8601),
    _rdfExtensionFields ::
      !(Maybe [ExtensionField]),
    _rdfDiagnosticCode ::
      !(Maybe Text),
    _rdfFinalRecipient ::
      !(Maybe Text),
    _rdfAction :: !DsnAction,
    _rdfStatus :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RecipientDsnFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdfRemoteMta' - The MTA to which the remote MTA attempted to deliver the message, formatted as specified in <https://tools.ietf.org/html/rfc3464 RFC 3464> (@mta-name-type; mta-name@ ). This parameter typically applies only to propagating synchronous bounces.
--
-- * 'rdfLastAttemptDate' - The time the final delivery attempt was made, in <https://www.ietf.org/rfc/rfc0822.txt RFC 822> date-time format.
--
-- * 'rdfExtensionFields' - Additional X-headers to include in the DSN.
--
-- * 'rdfDiagnosticCode' - An extended explanation of what went wrong; this is usually an SMTP response. See <https://tools.ietf.org/html/rfc3463 RFC 3463> for the correct formatting of this parameter.
--
-- * 'rdfFinalRecipient' - The email address that the message was ultimately delivered to. This corresponds to the @Final-Recipient@ in the DSN. If not specified, @FinalRecipient@ will be set to the @Recipient@ specified in the @BouncedRecipientInfo@ structure. Either @FinalRecipient@ or the recipient in @BouncedRecipientInfo@ must be a recipient of the original bounced message.
--
-- * 'rdfAction' - The action performed by the reporting mail transfer agent (MTA) as a result of its attempt to deliver the message to the recipient address. This is required by <https://tools.ietf.org/html/rfc3464 RFC 3464> .
--
-- * 'rdfStatus' - The status code that indicates what went wrong. This is required by <https://tools.ietf.org/html/rfc3464 RFC 3464> .
recipientDsnFields ::
  -- | 'rdfAction'
  DsnAction ->
  -- | 'rdfStatus'
  Text ->
  RecipientDsnFields
recipientDsnFields pAction_ pStatus_ =
  RecipientDsnFields'
    { _rdfRemoteMta = Nothing,
      _rdfLastAttemptDate = Nothing,
      _rdfExtensionFields = Nothing,
      _rdfDiagnosticCode = Nothing,
      _rdfFinalRecipient = Nothing,
      _rdfAction = pAction_,
      _rdfStatus = pStatus_
    }

-- | The MTA to which the remote MTA attempted to deliver the message, formatted as specified in <https://tools.ietf.org/html/rfc3464 RFC 3464> (@mta-name-type; mta-name@ ). This parameter typically applies only to propagating synchronous bounces.
rdfRemoteMta :: Lens' RecipientDsnFields (Maybe Text)
rdfRemoteMta = lens _rdfRemoteMta (\s a -> s {_rdfRemoteMta = a})

-- | The time the final delivery attempt was made, in <https://www.ietf.org/rfc/rfc0822.txt RFC 822> date-time format.
rdfLastAttemptDate :: Lens' RecipientDsnFields (Maybe UTCTime)
rdfLastAttemptDate = lens _rdfLastAttemptDate (\s a -> s {_rdfLastAttemptDate = a}) . mapping _Time

-- | Additional X-headers to include in the DSN.
rdfExtensionFields :: Lens' RecipientDsnFields [ExtensionField]
rdfExtensionFields = lens _rdfExtensionFields (\s a -> s {_rdfExtensionFields = a}) . _Default . _Coerce

-- | An extended explanation of what went wrong; this is usually an SMTP response. See <https://tools.ietf.org/html/rfc3463 RFC 3463> for the correct formatting of this parameter.
rdfDiagnosticCode :: Lens' RecipientDsnFields (Maybe Text)
rdfDiagnosticCode = lens _rdfDiagnosticCode (\s a -> s {_rdfDiagnosticCode = a})

-- | The email address that the message was ultimately delivered to. This corresponds to the @Final-Recipient@ in the DSN. If not specified, @FinalRecipient@ will be set to the @Recipient@ specified in the @BouncedRecipientInfo@ structure. Either @FinalRecipient@ or the recipient in @BouncedRecipientInfo@ must be a recipient of the original bounced message.
rdfFinalRecipient :: Lens' RecipientDsnFields (Maybe Text)
rdfFinalRecipient = lens _rdfFinalRecipient (\s a -> s {_rdfFinalRecipient = a})

-- | The action performed by the reporting mail transfer agent (MTA) as a result of its attempt to deliver the message to the recipient address. This is required by <https://tools.ietf.org/html/rfc3464 RFC 3464> .
rdfAction :: Lens' RecipientDsnFields DsnAction
rdfAction = lens _rdfAction (\s a -> s {_rdfAction = a})

-- | The status code that indicates what went wrong. This is required by <https://tools.ietf.org/html/rfc3464 RFC 3464> .
rdfStatus :: Lens' RecipientDsnFields Text
rdfStatus = lens _rdfStatus (\s a -> s {_rdfStatus = a})

instance Hashable RecipientDsnFields

instance NFData RecipientDsnFields

instance ToQuery RecipientDsnFields where
  toQuery RecipientDsnFields' {..} =
    mconcat
      [ "RemoteMta" =: _rdfRemoteMta,
        "LastAttemptDate" =: _rdfLastAttemptDate,
        "ExtensionFields"
          =: toQuery
            (toQueryList "member" <$> _rdfExtensionFields),
        "DiagnosticCode" =: _rdfDiagnosticCode,
        "FinalRecipient" =: _rdfFinalRecipient,
        "Action" =: _rdfAction,
        "Status" =: _rdfStatus
      ]
