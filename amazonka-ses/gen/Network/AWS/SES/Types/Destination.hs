{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.Destination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.Destination where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the destination of the message, consisting of To:, CC:, and BCC: fields.
--
--
--
-- /See:/ 'destination' smart constructor.
data Destination = Destination'
  { _dToAddresses ::
      !(Maybe [Text]),
    _dCCAddresses :: !(Maybe [Text]),
    _dBCCAddresses :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Destination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dToAddresses' - The recipients to place on the To: line of the message.
--
-- * 'dCCAddresses' - The recipients to place on the CC: line of the message.
--
-- * 'dBCCAddresses' - The recipients to place on the BCC: line of the message.
destination ::
  Destination
destination =
  Destination'
    { _dToAddresses = Nothing,
      _dCCAddresses = Nothing,
      _dBCCAddresses = Nothing
    }

-- | The recipients to place on the To: line of the message.
dToAddresses :: Lens' Destination [Text]
dToAddresses = lens _dToAddresses (\s a -> s {_dToAddresses = a}) . _Default . _Coerce

-- | The recipients to place on the CC: line of the message.
dCCAddresses :: Lens' Destination [Text]
dCCAddresses = lens _dCCAddresses (\s a -> s {_dCCAddresses = a}) . _Default . _Coerce

-- | The recipients to place on the BCC: line of the message.
dBCCAddresses :: Lens' Destination [Text]
dBCCAddresses = lens _dBCCAddresses (\s a -> s {_dBCCAddresses = a}) . _Default . _Coerce

instance Hashable Destination

instance NFData Destination

instance ToQuery Destination where
  toQuery Destination' {..} =
    mconcat
      [ "ToAddresses"
          =: toQuery (toQueryList "member" <$> _dToAddresses),
        "CcAddresses"
          =: toQuery (toQueryList "member" <$> _dCCAddresses),
        "BccAddresses"
          =: toQuery (toQueryList "member" <$> _dBCCAddresses)
      ]
