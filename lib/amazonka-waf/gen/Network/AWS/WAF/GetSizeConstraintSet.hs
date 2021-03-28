{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.GetSizeConstraintSet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the 'SizeConstraintSet' specified by @SizeConstraintSetId@ .
module Network.AWS.WAF.GetSizeConstraintSet
    (
    -- * Creating a request
      GetSizeConstraintSet (..)
    , mkGetSizeConstraintSet
    -- ** Request lenses
    , gscsSizeConstraintSetId

    -- * Destructuring the response
    , GetSizeConstraintSetResponse (..)
    , mkGetSizeConstraintSetResponse
    -- ** Response lenses
    , gscsrrsSizeConstraintSet
    , gscsrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WAF.Types as Types

-- | /See:/ 'mkGetSizeConstraintSet' smart constructor.
newtype GetSizeConstraintSet = GetSizeConstraintSet'
  { sizeConstraintSetId :: Types.ResourceId
    -- ^ The @SizeConstraintSetId@ of the 'SizeConstraintSet' that you want to get. @SizeConstraintSetId@ is returned by 'CreateSizeConstraintSet' and by 'ListSizeConstraintSets' .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetSizeConstraintSet' value with any optional fields omitted.
mkGetSizeConstraintSet
    :: Types.ResourceId -- ^ 'sizeConstraintSetId'
    -> GetSizeConstraintSet
mkGetSizeConstraintSet sizeConstraintSetId
  = GetSizeConstraintSet'{sizeConstraintSetId}

-- | The @SizeConstraintSetId@ of the 'SizeConstraintSet' that you want to get. @SizeConstraintSetId@ is returned by 'CreateSizeConstraintSet' and by 'ListSizeConstraintSets' .
--
-- /Note:/ Consider using 'sizeConstraintSetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gscsSizeConstraintSetId :: Lens.Lens' GetSizeConstraintSet Types.ResourceId
gscsSizeConstraintSetId = Lens.field @"sizeConstraintSetId"
{-# INLINEABLE gscsSizeConstraintSetId #-}
{-# DEPRECATED sizeConstraintSetId "Use generic-lens or generic-optics with 'sizeConstraintSetId' instead"  #-}

instance Core.ToQuery GetSizeConstraintSet where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetSizeConstraintSet where
        toHeaders GetSizeConstraintSet{..}
          = Core.pure
              ("X-Amz-Target", "AWSWAF_20150824.GetSizeConstraintSet")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetSizeConstraintSet where
        toJSON GetSizeConstraintSet{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("SizeConstraintSetId" Core..= sizeConstraintSetId)])

instance Core.AWSRequest GetSizeConstraintSet where
        type Rs GetSizeConstraintSet = GetSizeConstraintSetResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetSizeConstraintSetResponse' Core.<$>
                   (x Core..:? "SizeConstraintSet") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkGetSizeConstraintSetResponse' smart constructor.
data GetSizeConstraintSetResponse = GetSizeConstraintSetResponse'
  { sizeConstraintSet :: Core.Maybe Types.SizeConstraintSet
    -- ^ Information about the 'SizeConstraintSet' that you specified in the @GetSizeConstraintSet@ request. For more information, see the following topics:
--
--
--     * 'SizeConstraintSet' : Contains @SizeConstraintSetId@ , @SizeConstraints@ , and @Name@ 
--
--
--     * @SizeConstraints@ : Contains an array of 'SizeConstraint' objects. Each @SizeConstraint@ object contains 'FieldToMatch' , @TextTransformation@ , @ComparisonOperator@ , and @Size@ 
--
--
--     * 'FieldToMatch' : Contains @Data@ and @Type@ 
--
--
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetSizeConstraintSetResponse' value with any optional fields omitted.
mkGetSizeConstraintSetResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetSizeConstraintSetResponse
mkGetSizeConstraintSetResponse responseStatus
  = GetSizeConstraintSetResponse'{sizeConstraintSet = Core.Nothing,
                                  responseStatus}

-- | Information about the 'SizeConstraintSet' that you specified in the @GetSizeConstraintSet@ request. For more information, see the following topics:
--
--
--     * 'SizeConstraintSet' : Contains @SizeConstraintSetId@ , @SizeConstraints@ , and @Name@ 
--
--
--     * @SizeConstraints@ : Contains an array of 'SizeConstraint' objects. Each @SizeConstraint@ object contains 'FieldToMatch' , @TextTransformation@ , @ComparisonOperator@ , and @Size@ 
--
--
--     * 'FieldToMatch' : Contains @Data@ and @Type@ 
--
--
--
-- /Note:/ Consider using 'sizeConstraintSet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gscsrrsSizeConstraintSet :: Lens.Lens' GetSizeConstraintSetResponse (Core.Maybe Types.SizeConstraintSet)
gscsrrsSizeConstraintSet = Lens.field @"sizeConstraintSet"
{-# INLINEABLE gscsrrsSizeConstraintSet #-}
{-# DEPRECATED sizeConstraintSet "Use generic-lens or generic-optics with 'sizeConstraintSet' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gscsrrsResponseStatus :: Lens.Lens' GetSizeConstraintSetResponse Core.Int
gscsrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gscsrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
