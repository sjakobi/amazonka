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
-- Module      : Network.AWS.EC2.Types.LaunchTemplateErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateErrorCode
  ( LaunchTemplateErrorCode
      ( ..,
        LaunchTemplateErrorCodeLaunchTemplateIdDoesNotExist,
        LaunchTemplateErrorCodeLaunchTemplateIdMalformed,
        LaunchTemplateErrorCodeLaunchTemplateNameDoesNotExist,
        LaunchTemplateErrorCodeLaunchTemplateNameMalformed,
        LaunchTemplateErrorCodeLaunchTemplateVersionDoesNotExist,
        LaunchTemplateErrorCodeUnexpectedError
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype LaunchTemplateErrorCode = LaunchTemplateErrorCode'
  { fromLaunchTemplateErrorCode ::
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

pattern LaunchTemplateErrorCodeLaunchTemplateIdDoesNotExist :: LaunchTemplateErrorCode
pattern LaunchTemplateErrorCodeLaunchTemplateIdDoesNotExist = LaunchTemplateErrorCode' "launchTemplateIdDoesNotExist"

pattern LaunchTemplateErrorCodeLaunchTemplateIdMalformed :: LaunchTemplateErrorCode
pattern LaunchTemplateErrorCodeLaunchTemplateIdMalformed = LaunchTemplateErrorCode' "launchTemplateIdMalformed"

pattern LaunchTemplateErrorCodeLaunchTemplateNameDoesNotExist :: LaunchTemplateErrorCode
pattern LaunchTemplateErrorCodeLaunchTemplateNameDoesNotExist = LaunchTemplateErrorCode' "launchTemplateNameDoesNotExist"

pattern LaunchTemplateErrorCodeLaunchTemplateNameMalformed :: LaunchTemplateErrorCode
pattern LaunchTemplateErrorCodeLaunchTemplateNameMalformed = LaunchTemplateErrorCode' "launchTemplateNameMalformed"

pattern LaunchTemplateErrorCodeLaunchTemplateVersionDoesNotExist :: LaunchTemplateErrorCode
pattern LaunchTemplateErrorCodeLaunchTemplateVersionDoesNotExist = LaunchTemplateErrorCode' "launchTemplateVersionDoesNotExist"

pattern LaunchTemplateErrorCodeUnexpectedError :: LaunchTemplateErrorCode
pattern LaunchTemplateErrorCodeUnexpectedError = LaunchTemplateErrorCode' "unexpectedError"

{-# COMPLETE
  LaunchTemplateErrorCodeLaunchTemplateIdDoesNotExist,
  LaunchTemplateErrorCodeLaunchTemplateIdMalformed,
  LaunchTemplateErrorCodeLaunchTemplateNameDoesNotExist,
  LaunchTemplateErrorCodeLaunchTemplateNameMalformed,
  LaunchTemplateErrorCodeLaunchTemplateVersionDoesNotExist,
  LaunchTemplateErrorCodeUnexpectedError,
  LaunchTemplateErrorCode'
  #-}

instance Prelude.FromText LaunchTemplateErrorCode where
  parser = LaunchTemplateErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText LaunchTemplateErrorCode where
  toText (LaunchTemplateErrorCode' x) = x

instance Prelude.Hashable LaunchTemplateErrorCode

instance Prelude.NFData LaunchTemplateErrorCode

instance Prelude.ToByteString LaunchTemplateErrorCode

instance Prelude.ToQuery LaunchTemplateErrorCode

instance Prelude.ToHeader LaunchTemplateErrorCode

instance Prelude.FromXML LaunchTemplateErrorCode where
  parseXML = Prelude.parseXMLText "LaunchTemplateErrorCode"
