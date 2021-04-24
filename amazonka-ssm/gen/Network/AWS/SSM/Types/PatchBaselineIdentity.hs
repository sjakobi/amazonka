{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchBaselineIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchBaselineIdentity where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.OperatingSystem

-- | Defines the basic information about a patch baseline.
--
--
--
-- /See:/ 'patchBaselineIdentity' smart constructor.
data PatchBaselineIdentity = PatchBaselineIdentity'
  { _pbiBaselineName ::
      !(Maybe Text),
    _pbiBaselineId ::
      !(Maybe Text),
    _pbiDefaultBaseline ::
      !(Maybe Bool),
    _pbiBaselineDescription ::
      !(Maybe Text),
    _pbiOperatingSystem ::
      !(Maybe OperatingSystem)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PatchBaselineIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbiBaselineName' - The name of the patch baseline.
--
-- * 'pbiBaselineId' - The ID of the patch baseline.
--
-- * 'pbiDefaultBaseline' - Whether this is the default baseline. Note that Systems Manager supports creating multiple default patch baselines. For example, you can create a default patch baseline for each operating system.
--
-- * 'pbiBaselineDescription' - The description of the patch baseline.
--
-- * 'pbiOperatingSystem' - Defines the operating system the patch baseline applies to. The Default value is WINDOWS.
patchBaselineIdentity ::
  PatchBaselineIdentity
patchBaselineIdentity =
  PatchBaselineIdentity'
    { _pbiBaselineName = Nothing,
      _pbiBaselineId = Nothing,
      _pbiDefaultBaseline = Nothing,
      _pbiBaselineDescription = Nothing,
      _pbiOperatingSystem = Nothing
    }

-- | The name of the patch baseline.
pbiBaselineName :: Lens' PatchBaselineIdentity (Maybe Text)
pbiBaselineName = lens _pbiBaselineName (\s a -> s {_pbiBaselineName = a})

-- | The ID of the patch baseline.
pbiBaselineId :: Lens' PatchBaselineIdentity (Maybe Text)
pbiBaselineId = lens _pbiBaselineId (\s a -> s {_pbiBaselineId = a})

-- | Whether this is the default baseline. Note that Systems Manager supports creating multiple default patch baselines. For example, you can create a default patch baseline for each operating system.
pbiDefaultBaseline :: Lens' PatchBaselineIdentity (Maybe Bool)
pbiDefaultBaseline = lens _pbiDefaultBaseline (\s a -> s {_pbiDefaultBaseline = a})

-- | The description of the patch baseline.
pbiBaselineDescription :: Lens' PatchBaselineIdentity (Maybe Text)
pbiBaselineDescription = lens _pbiBaselineDescription (\s a -> s {_pbiBaselineDescription = a})

-- | Defines the operating system the patch baseline applies to. The Default value is WINDOWS.
pbiOperatingSystem :: Lens' PatchBaselineIdentity (Maybe OperatingSystem)
pbiOperatingSystem = lens _pbiOperatingSystem (\s a -> s {_pbiOperatingSystem = a})

instance FromJSON PatchBaselineIdentity where
  parseJSON =
    withObject
      "PatchBaselineIdentity"
      ( \x ->
          PatchBaselineIdentity'
            <$> (x .:? "BaselineName")
            <*> (x .:? "BaselineId")
            <*> (x .:? "DefaultBaseline")
            <*> (x .:? "BaselineDescription")
            <*> (x .:? "OperatingSystem")
      )

instance Hashable PatchBaselineIdentity

instance NFData PatchBaselineIdentity
