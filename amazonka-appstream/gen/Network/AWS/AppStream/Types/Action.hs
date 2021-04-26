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
-- Module      : Network.AWS.AppStream.Types.Action
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.Action
  ( Action
      ( ..,
        ActionCLIPBOARDCOPYFROMLOCALDEVICE,
        ActionCLIPBOARDCOPYTOLOCALDEVICE,
        ActionDOMAINPASSWORDSIGNIN,
        ActionDOMAINSMARTCARDSIGNIN,
        ActionFILEDOWNLOAD,
        ActionFILEUPLOAD,
        ActionPRINTINGTOLOCALDEVICE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Action = Action' {fromAction :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ActionCLIPBOARDCOPYFROMLOCALDEVICE :: Action
pattern ActionCLIPBOARDCOPYFROMLOCALDEVICE = Action' "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"

pattern ActionCLIPBOARDCOPYTOLOCALDEVICE :: Action
pattern ActionCLIPBOARDCOPYTOLOCALDEVICE = Action' "CLIPBOARD_COPY_TO_LOCAL_DEVICE"

pattern ActionDOMAINPASSWORDSIGNIN :: Action
pattern ActionDOMAINPASSWORDSIGNIN = Action' "DOMAIN_PASSWORD_SIGNIN"

pattern ActionDOMAINSMARTCARDSIGNIN :: Action
pattern ActionDOMAINSMARTCARDSIGNIN = Action' "DOMAIN_SMART_CARD_SIGNIN"

pattern ActionFILEDOWNLOAD :: Action
pattern ActionFILEDOWNLOAD = Action' "FILE_DOWNLOAD"

pattern ActionFILEUPLOAD :: Action
pattern ActionFILEUPLOAD = Action' "FILE_UPLOAD"

pattern ActionPRINTINGTOLOCALDEVICE :: Action
pattern ActionPRINTINGTOLOCALDEVICE = Action' "PRINTING_TO_LOCAL_DEVICE"

{-# COMPLETE
  ActionCLIPBOARDCOPYFROMLOCALDEVICE,
  ActionCLIPBOARDCOPYTOLOCALDEVICE,
  ActionDOMAINPASSWORDSIGNIN,
  ActionDOMAINSMARTCARDSIGNIN,
  ActionFILEDOWNLOAD,
  ActionFILEUPLOAD,
  ActionPRINTINGTOLOCALDEVICE,
  Action'
  #-}

instance Prelude.FromText Action where
  parser = Action' Prelude.<$> Prelude.takeText

instance Prelude.ToText Action where
  toText (Action' x) = x

instance Prelude.Hashable Action

instance Prelude.NFData Action

instance Prelude.ToByteString Action

instance Prelude.ToQuery Action

instance Prelude.ToHeader Action

instance Prelude.ToJSON Action where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Action where
  parseJSON = Prelude.parseJSONText "Action"
