{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.PolicyToPath
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.PolicyToPath where

import Network.AWS.CloudDirectory.Types.PolicyAttachment
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Used when a regular object exists in a 'Directory' and you want to find all of the policies that are associated with that object and the parent to that object.
--
--
--
-- /See:/ 'policyToPath' smart constructor.
data PolicyToPath = PolicyToPath'
  { _ptpPolicies ::
      !(Maybe [PolicyAttachment]),
    _ptpPath :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PolicyToPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptpPolicies' - List of policy objects.
--
-- * 'ptpPath' - The path that is referenced from the root.
policyToPath ::
  PolicyToPath
policyToPath =
  PolicyToPath'
    { _ptpPolicies = Nothing,
      _ptpPath = Nothing
    }

-- | List of policy objects.
ptpPolicies :: Lens' PolicyToPath [PolicyAttachment]
ptpPolicies = lens _ptpPolicies (\s a -> s {_ptpPolicies = a}) . _Default . _Coerce

-- | The path that is referenced from the root.
ptpPath :: Lens' PolicyToPath (Maybe Text)
ptpPath = lens _ptpPath (\s a -> s {_ptpPath = a})

instance FromJSON PolicyToPath where
  parseJSON =
    withObject
      "PolicyToPath"
      ( \x ->
          PolicyToPath'
            <$> (x .:? "Policies" .!= mempty) <*> (x .:? "Path")
      )

instance Hashable PolicyToPath

instance NFData PolicyToPath
