{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.BatchRestrictions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.BatchRestrictions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies restrictions for the batch build.
--
--
--
-- /See:/ 'batchRestrictions' smart constructor.
data BatchRestrictions = BatchRestrictions'
  { _brComputeTypesAllowed ::
      !(Maybe [Text]),
    _brMaximumBuildsAllowed ::
      !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchRestrictions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brComputeTypesAllowed' - An array of strings that specify the compute types that are allowed for the batch build. See <https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html Build environment compute types> in the /AWS CodeBuild User Guide/ for these values.
--
-- * 'brMaximumBuildsAllowed' - Specifies the maximum number of builds allowed.
batchRestrictions ::
  BatchRestrictions
batchRestrictions =
  BatchRestrictions'
    { _brComputeTypesAllowed =
        Nothing,
      _brMaximumBuildsAllowed = Nothing
    }

-- | An array of strings that specify the compute types that are allowed for the batch build. See <https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html Build environment compute types> in the /AWS CodeBuild User Guide/ for these values.
brComputeTypesAllowed :: Lens' BatchRestrictions [Text]
brComputeTypesAllowed = lens _brComputeTypesAllowed (\s a -> s {_brComputeTypesAllowed = a}) . _Default . _Coerce

-- | Specifies the maximum number of builds allowed.
brMaximumBuildsAllowed :: Lens' BatchRestrictions (Maybe Int)
brMaximumBuildsAllowed = lens _brMaximumBuildsAllowed (\s a -> s {_brMaximumBuildsAllowed = a})

instance FromJSON BatchRestrictions where
  parseJSON =
    withObject
      "BatchRestrictions"
      ( \x ->
          BatchRestrictions'
            <$> (x .:? "computeTypesAllowed" .!= mempty)
            <*> (x .:? "maximumBuildsAllowed")
      )

instance Hashable BatchRestrictions

instance NFData BatchRestrictions

instance ToJSON BatchRestrictions where
  toJSON BatchRestrictions' {..} =
    object
      ( catMaybes
          [ ("computeTypesAllowed" .=)
              <$> _brComputeTypesAllowed,
            ("maximumBuildsAllowed" .=)
              <$> _brMaximumBuildsAllowed
          ]
      )
