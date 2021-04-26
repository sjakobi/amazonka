{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.ContactFlowType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.ContactFlowType
  ( ContactFlowType
      ( ..,
        ContactFlowTypeAGENTHOLD,
        ContactFlowTypeAGENTTRANSFER,
        ContactFlowTypeAGENTWHISPER,
        ContactFlowTypeCONTACTFLOW,
        ContactFlowTypeCUSTOMERHOLD,
        ContactFlowTypeCUSTOMERQUEUE,
        ContactFlowTypeCUSTOMERWHISPER,
        ContactFlowTypeOUTBOUNDWHISPER,
        ContactFlowTypeQUEUETRANSFER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContactFlowType = ContactFlowType'
  { fromContactFlowType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ContactFlowTypeAGENTHOLD :: ContactFlowType
pattern ContactFlowTypeAGENTHOLD = ContactFlowType' "AGENT_HOLD"

pattern ContactFlowTypeAGENTTRANSFER :: ContactFlowType
pattern ContactFlowTypeAGENTTRANSFER = ContactFlowType' "AGENT_TRANSFER"

pattern ContactFlowTypeAGENTWHISPER :: ContactFlowType
pattern ContactFlowTypeAGENTWHISPER = ContactFlowType' "AGENT_WHISPER"

pattern ContactFlowTypeCONTACTFLOW :: ContactFlowType
pattern ContactFlowTypeCONTACTFLOW = ContactFlowType' "CONTACT_FLOW"

pattern ContactFlowTypeCUSTOMERHOLD :: ContactFlowType
pattern ContactFlowTypeCUSTOMERHOLD = ContactFlowType' "CUSTOMER_HOLD"

pattern ContactFlowTypeCUSTOMERQUEUE :: ContactFlowType
pattern ContactFlowTypeCUSTOMERQUEUE = ContactFlowType' "CUSTOMER_QUEUE"

pattern ContactFlowTypeCUSTOMERWHISPER :: ContactFlowType
pattern ContactFlowTypeCUSTOMERWHISPER = ContactFlowType' "CUSTOMER_WHISPER"

pattern ContactFlowTypeOUTBOUNDWHISPER :: ContactFlowType
pattern ContactFlowTypeOUTBOUNDWHISPER = ContactFlowType' "OUTBOUND_WHISPER"

pattern ContactFlowTypeQUEUETRANSFER :: ContactFlowType
pattern ContactFlowTypeQUEUETRANSFER = ContactFlowType' "QUEUE_TRANSFER"

{-# COMPLETE
  ContactFlowTypeAGENTHOLD,
  ContactFlowTypeAGENTTRANSFER,
  ContactFlowTypeAGENTWHISPER,
  ContactFlowTypeCONTACTFLOW,
  ContactFlowTypeCUSTOMERHOLD,
  ContactFlowTypeCUSTOMERQUEUE,
  ContactFlowTypeCUSTOMERWHISPER,
  ContactFlowTypeOUTBOUNDWHISPER,
  ContactFlowTypeQUEUETRANSFER,
  ContactFlowType'
  #-}

instance Prelude.FromText ContactFlowType where
  parser = ContactFlowType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContactFlowType where
  toText (ContactFlowType' x) = x

instance Prelude.Hashable ContactFlowType

instance Prelude.NFData ContactFlowType

instance Prelude.ToByteString ContactFlowType

instance Prelude.ToQuery ContactFlowType

instance Prelude.ToHeader ContactFlowType

instance Prelude.ToJSON ContactFlowType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContactFlowType where
  parseJSON = Prelude.parseJSONText "ContactFlowType"
