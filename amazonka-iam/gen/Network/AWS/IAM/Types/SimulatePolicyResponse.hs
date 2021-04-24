{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.SimulatePolicyResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.SimulatePolicyResponse where

import Network.AWS.IAM.Types.EvaluationResult
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the response to a successful 'SimulatePrincipalPolicy' or 'SimulateCustomPolicy' request.
--
--
--
-- /See:/ 'simulatePolicyResponse' smart constructor.
data SimulatePolicyResponse = SimulatePolicyResponse'
  { _sprIsTruncated ::
      !(Maybe Bool),
    _sprEvaluationResults ::
      !( Maybe
           [EvaluationResult]
       ),
    _sprMarker ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SimulatePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sprIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'sprEvaluationResults' - The results of the simulation.
--
-- * 'sprMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
simulatePolicyResponse ::
  SimulatePolicyResponse
simulatePolicyResponse =
  SimulatePolicyResponse'
    { _sprIsTruncated = Nothing,
      _sprEvaluationResults = Nothing,
      _sprMarker = Nothing
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
sprIsTruncated :: Lens' SimulatePolicyResponse (Maybe Bool)
sprIsTruncated = lens _sprIsTruncated (\s a -> s {_sprIsTruncated = a})

-- | The results of the simulation.
sprEvaluationResults :: Lens' SimulatePolicyResponse [EvaluationResult]
sprEvaluationResults = lens _sprEvaluationResults (\s a -> s {_sprEvaluationResults = a}) . _Default . _Coerce

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
sprMarker :: Lens' SimulatePolicyResponse (Maybe Text)
sprMarker = lens _sprMarker (\s a -> s {_sprMarker = a})

instance FromXML SimulatePolicyResponse where
  parseXML x =
    SimulatePolicyResponse'
      <$> (x .@? "IsTruncated")
      <*> ( x .@? "EvaluationResults" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Marker")

instance Hashable SimulatePolicyResponse

instance NFData SimulatePolicyResponse
