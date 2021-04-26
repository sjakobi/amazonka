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
-- Module      : Network.AWS.MediaLive.Types.NetworkInputServerValidation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.NetworkInputServerValidation
  ( NetworkInputServerValidation
      ( ..,
        NetworkInputServerValidationCHECKCRYPTOGRAPHYANDVALIDATENAME,
        NetworkInputServerValidationCHECKCRYPTOGRAPHYONLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Network Input Server Validation
newtype NetworkInputServerValidation = NetworkInputServerValidation'
  { fromNetworkInputServerValidation ::
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

pattern NetworkInputServerValidationCHECKCRYPTOGRAPHYANDVALIDATENAME :: NetworkInputServerValidation
pattern NetworkInputServerValidationCHECKCRYPTOGRAPHYANDVALIDATENAME = NetworkInputServerValidation' "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME"

pattern NetworkInputServerValidationCHECKCRYPTOGRAPHYONLY :: NetworkInputServerValidation
pattern NetworkInputServerValidationCHECKCRYPTOGRAPHYONLY = NetworkInputServerValidation' "CHECK_CRYPTOGRAPHY_ONLY"

{-# COMPLETE
  NetworkInputServerValidationCHECKCRYPTOGRAPHYANDVALIDATENAME,
  NetworkInputServerValidationCHECKCRYPTOGRAPHYONLY,
  NetworkInputServerValidation'
  #-}

instance Prelude.FromText NetworkInputServerValidation where
  parser = NetworkInputServerValidation' Prelude.<$> Prelude.takeText

instance Prelude.ToText NetworkInputServerValidation where
  toText (NetworkInputServerValidation' x) = x

instance Prelude.Hashable NetworkInputServerValidation

instance Prelude.NFData NetworkInputServerValidation

instance Prelude.ToByteString NetworkInputServerValidation

instance Prelude.ToQuery NetworkInputServerValidation

instance Prelude.ToHeader NetworkInputServerValidation

instance Prelude.ToJSON NetworkInputServerValidation where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NetworkInputServerValidation where
  parseJSON = Prelude.parseJSONText "NetworkInputServerValidation"
