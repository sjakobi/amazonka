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
-- Module      : Network.AWS.AppStream.Types.StackAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.StackAttribute
  ( StackAttribute
      ( ..,
        StackAttributeACCESSENDPOINTS,
        StackAttributeEMBEDHOSTDOMAINS,
        StackAttributeFEEDBACKURL,
        StackAttributeIAMROLEARN,
        StackAttributeREDIRECTURL,
        StackAttributeSTORAGECONNECTORGOOGLEDRIVE,
        StackAttributeSTORAGECONNECTORHOMEFOLDERS,
        StackAttributeSTORAGECONNECTORONEDRIVE,
        StackAttributeSTORAGECONNECTORS,
        StackAttributeTHEMENAME,
        StackAttributeUSERSETTINGS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackAttribute = StackAttribute'
  { fromStackAttribute ::
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

pattern StackAttributeACCESSENDPOINTS :: StackAttribute
pattern StackAttributeACCESSENDPOINTS = StackAttribute' "ACCESS_ENDPOINTS"

pattern StackAttributeEMBEDHOSTDOMAINS :: StackAttribute
pattern StackAttributeEMBEDHOSTDOMAINS = StackAttribute' "EMBED_HOST_DOMAINS"

pattern StackAttributeFEEDBACKURL :: StackAttribute
pattern StackAttributeFEEDBACKURL = StackAttribute' "FEEDBACK_URL"

pattern StackAttributeIAMROLEARN :: StackAttribute
pattern StackAttributeIAMROLEARN = StackAttribute' "IAM_ROLE_ARN"

pattern StackAttributeREDIRECTURL :: StackAttribute
pattern StackAttributeREDIRECTURL = StackAttribute' "REDIRECT_URL"

pattern StackAttributeSTORAGECONNECTORGOOGLEDRIVE :: StackAttribute
pattern StackAttributeSTORAGECONNECTORGOOGLEDRIVE = StackAttribute' "STORAGE_CONNECTOR_GOOGLE_DRIVE"

pattern StackAttributeSTORAGECONNECTORHOMEFOLDERS :: StackAttribute
pattern StackAttributeSTORAGECONNECTORHOMEFOLDERS = StackAttribute' "STORAGE_CONNECTOR_HOMEFOLDERS"

pattern StackAttributeSTORAGECONNECTORONEDRIVE :: StackAttribute
pattern StackAttributeSTORAGECONNECTORONEDRIVE = StackAttribute' "STORAGE_CONNECTOR_ONE_DRIVE"

pattern StackAttributeSTORAGECONNECTORS :: StackAttribute
pattern StackAttributeSTORAGECONNECTORS = StackAttribute' "STORAGE_CONNECTORS"

pattern StackAttributeTHEMENAME :: StackAttribute
pattern StackAttributeTHEMENAME = StackAttribute' "THEME_NAME"

pattern StackAttributeUSERSETTINGS :: StackAttribute
pattern StackAttributeUSERSETTINGS = StackAttribute' "USER_SETTINGS"

{-# COMPLETE
  StackAttributeACCESSENDPOINTS,
  StackAttributeEMBEDHOSTDOMAINS,
  StackAttributeFEEDBACKURL,
  StackAttributeIAMROLEARN,
  StackAttributeREDIRECTURL,
  StackAttributeSTORAGECONNECTORGOOGLEDRIVE,
  StackAttributeSTORAGECONNECTORHOMEFOLDERS,
  StackAttributeSTORAGECONNECTORONEDRIVE,
  StackAttributeSTORAGECONNECTORS,
  StackAttributeTHEMENAME,
  StackAttributeUSERSETTINGS,
  StackAttribute'
  #-}

instance Prelude.FromText StackAttribute where
  parser = StackAttribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackAttribute where
  toText (StackAttribute' x) = x

instance Prelude.Hashable StackAttribute

instance Prelude.NFData StackAttribute

instance Prelude.ToByteString StackAttribute

instance Prelude.ToQuery StackAttribute

instance Prelude.ToHeader StackAttribute

instance Prelude.ToJSON StackAttribute where
  toJSON = Prelude.toJSONText
