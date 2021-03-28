{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.StreamingDistributionList
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFront.Types.StreamingDistributionList
  ( StreamingDistributionList (..)
  -- * Smart constructor
  , mkStreamingDistributionList
  -- * Lenses
  , sdlMarker
  , sdlMaxItems
  , sdlIsTruncated
  , sdlQuantity
  , sdlItems
  , sdlNextMarker
  ) where

import qualified Network.AWS.CloudFront.Types.StreamingDistributionSummary as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A streaming distribution list. 
--
-- /See:/ 'mkStreamingDistributionList' smart constructor.
data StreamingDistributionList = StreamingDistributionList'
  { marker :: Core.Text
    -- ^ The value you provided for the @Marker@ request parameter. 
  , maxItems :: Core.Int
    -- ^ The value you provided for the @MaxItems@ request parameter. 
  , isTruncated :: Core.Bool
    -- ^ A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the @Marker@ request parameter to retrieve more distributions in the list. 
  , quantity :: Core.Int
    -- ^ The number of streaming distributions that were created by the current AWS account. 
  , items :: Core.Maybe [Types.StreamingDistributionSummary]
    -- ^ A complex type that contains one @StreamingDistributionSummary@ element for each distribution that was created by the current AWS account.
  , nextMarker :: Core.Maybe Core.Text
    -- ^ If @IsTruncated@ is @true@ , this element is present and contains the value you can use for the @Marker@ request parameter to continue listing your RTMP distributions where they left off. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'StreamingDistributionList' value with any optional fields omitted.
mkStreamingDistributionList
    :: Core.Text -- ^ 'marker'
    -> Core.Int -- ^ 'maxItems'
    -> Core.Bool -- ^ 'isTruncated'
    -> Core.Int -- ^ 'quantity'
    -> StreamingDistributionList
mkStreamingDistributionList marker maxItems isTruncated quantity
  = StreamingDistributionList'{marker, maxItems, isTruncated,
                               quantity, items = Core.Nothing, nextMarker = Core.Nothing}

-- | The value you provided for the @Marker@ request parameter. 
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlMarker :: Lens.Lens' StreamingDistributionList Core.Text
sdlMarker = Lens.field @"marker"
{-# INLINEABLE sdlMarker #-}
{-# DEPRECATED marker "Use generic-lens or generic-optics with 'marker' instead"  #-}

-- | The value you provided for the @MaxItems@ request parameter. 
--
-- /Note:/ Consider using 'maxItems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlMaxItems :: Lens.Lens' StreamingDistributionList Core.Int
sdlMaxItems = Lens.field @"maxItems"
{-# INLINEABLE sdlMaxItems #-}
{-# DEPRECATED maxItems "Use generic-lens or generic-optics with 'maxItems' instead"  #-}

-- | A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the @Marker@ request parameter to retrieve more distributions in the list. 
--
-- /Note:/ Consider using 'isTruncated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlIsTruncated :: Lens.Lens' StreamingDistributionList Core.Bool
sdlIsTruncated = Lens.field @"isTruncated"
{-# INLINEABLE sdlIsTruncated #-}
{-# DEPRECATED isTruncated "Use generic-lens or generic-optics with 'isTruncated' instead"  #-}

-- | The number of streaming distributions that were created by the current AWS account. 
--
-- /Note:/ Consider using 'quantity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlQuantity :: Lens.Lens' StreamingDistributionList Core.Int
sdlQuantity = Lens.field @"quantity"
{-# INLINEABLE sdlQuantity #-}
{-# DEPRECATED quantity "Use generic-lens or generic-optics with 'quantity' instead"  #-}

-- | A complex type that contains one @StreamingDistributionSummary@ element for each distribution that was created by the current AWS account.
--
-- /Note:/ Consider using 'items' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlItems :: Lens.Lens' StreamingDistributionList (Core.Maybe [Types.StreamingDistributionSummary])
sdlItems = Lens.field @"items"
{-# INLINEABLE sdlItems #-}
{-# DEPRECATED items "Use generic-lens or generic-optics with 'items' instead"  #-}

-- | If @IsTruncated@ is @true@ , this element is present and contains the value you can use for the @Marker@ request parameter to continue listing your RTMP distributions where they left off. 
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlNextMarker :: Lens.Lens' StreamingDistributionList (Core.Maybe Core.Text)
sdlNextMarker = Lens.field @"nextMarker"
{-# INLINEABLE sdlNextMarker #-}
{-# DEPRECATED nextMarker "Use generic-lens or generic-optics with 'nextMarker' instead"  #-}

instance Core.FromXML StreamingDistributionList where
        parseXML x
          = StreamingDistributionList' Core.<$>
              (x Core..@ "Marker") Core.<*> x Core..@ "MaxItems" Core.<*>
                x Core..@ "IsTruncated"
                Core.<*> x Core..@ "Quantity"
                Core.<*>
                x Core..@? "Items" Core..<@>
                  Core.parseXMLList "StreamingDistributionSummary"
                Core.<*> x Core..@? "NextMarker"
